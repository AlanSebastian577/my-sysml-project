package 'Homelanders-Mileage competition' {

    package '01 Operational Context' {
        doc /* Baseline cut-off: 12 November 2026. Scope: Operational context, organisation, workflow and provisional stakeholder intent for Shell Eco-marathon Mileage Challenge (Prototype Battery Electric). */

        // 1. Organisational Definitions
        part def Institution {
            doc /* Academic institution hosting the Shell Eco-marathon team. */
        }

        part def EngineeringTeam {
            doc /* Internal student engineering team boundary. */
        }

        part def TeamRole {
            attribute personName : String;
            attribute responsibility : String;
        }

        part def ExternalStakeholderRole {
            attribute personName : String;
            attribute roleNote : String;
        }

        // 2. Organisation Structure (Development Team Organisation)
        part 'Hochschule Trier' : Institution {
            part 'Homelanders / proTRon' : EngineeringTeam {
                part 'Team lead' : TeamRole {
                    :>> personName = "Chandru Cholan";
                    :>> responsibility = "Overall project leadership, baseline approval, and team coordination.";
                }
                part 'Requirements' : TeamRole {
                    :>> personName = "Ranjith Kumar Sundaram";
                    :>> responsibility = "Source rule analysis, requirement derivation, and traceability management.";
                }
                part 'Mechanical' : TeamRole {
                    :>> personName = "Azfar Ali";
                    :>> responsibility = "Mechanical packaging, bulkhead integration, and chassis/tractive architecture.";
                }
                part 'Electrical' : TeamRole {
                    :>> personName = "Alan Sebastian";
                    :>> responsibility = "Propulsion electrical system, battery limits, BMS protection, and energy metering.";
                }
                part 'Testing / Driver' : TeamRole {
                    :>> personName = "Sripad Kartha";
                    :>> responsibility = "Vehicle operation, driver interface validation, and track/bench testing.";
                }
            }
        }

        // External roles kept outside the internal team boundary
        part 'Reviewer' : ExternalStakeholderRole {
            :>> personName = "Prof. Draeger";
            :>> roleNote = "Classroom model role (appointment unconfirmed); academic review involvement.";
        }

        part 'Inspector' : ExternalStakeholderRole {
            :>> personName = "Mr. Paul Johnson";
            :>> roleNote = "Classroom model role (appointment unconfirmed); technical inspection involvement.";
        }

        // 3. Development Workflow (PROPOSED reconstruction pending Chandru's approval)
        action def 'Development Workflow' {
            doc /* Status: PROPOSED reconstruction sequence (awaiting Chandru's approval). Expected outputs: requirement baseline, architecture, verification evidence, and change decision. */

            action 'Identify stakeholder needs';
            action 'Review applicable rules';
            action 'Derive vehicle requirements';
            action 'Review requirements';
            action 'Develop system functions and exchanges';
            action 'Allocate responsibility';
            action 'Plan verification';
            action 'Test and review';
            action 'Update baseline';

            first start then 'Identify stakeholder needs';
            first 'Identify stakeholder needs' then 'Review applicable rules';
            first 'Review applicable rules' then 'Derive vehicle requirements';
            first 'Derive vehicle requirements' then 'Review requirements';
            first 'Review requirements' then 'Develop system functions and exchanges';
            first 'Develop system functions and exchanges' then 'Allocate responsibility';
            first 'Allocate responsibility' then 'Plan verification';
            first 'Plan verification' then 'Test and review';
            first 'Test and review' then 'Update baseline';
            first 'Update baseline' then done;
        }

        // 4. Provisional Stakeholder Intent
        requirement def 'Provisional Stakeholder Intent' {
            doc /*
             * Status: PROPOSED / Provisional (awaiting stakeholder approval).
             * Stakeholder / Role: Homelanders / proTRon Team & Hochschule Trier.
             * Need: Participate safely and competitively in the Shell Eco-marathon Mileage Challenge (Prototype Battery Electric) while meeting all 2027 Chapter I regulations.
             * Goal: Deliver a rules-compliant, safe, and energy-efficient battery-electric prototype vehicle.
             * Measurable Objective: Energy efficiency target [km/kWh] = TBD (Open Issue: do not substitute the 1,000 Wh competition battery cap as a performance target).
             * Rationale: Establishes baseline engineering intent before functional decomposition and compliance verification.
             * Owner: Chandru Cholan (Team Lead) / Ranjith Kumar Sundaram (Requirements).
             * Linked Requirements: ELEC-001, ENER-001, SAFE-001, SAFE-002, PACK-001..PACK-006.
             */
        }
    }
}