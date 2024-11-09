import { Sequelize } from "sequelize-typescript";
import { config } from "./config/config";

export const sequelize = new Sequelize({
  username: "postgres",
  password: "postgres",
  database: "postgres",
  host: "database.cst5cbmcpryb.us-east-1.rds.amazonaws.com",
  port: 5432,

  dialect: "postgres",
  storage: ":memory:",
});
