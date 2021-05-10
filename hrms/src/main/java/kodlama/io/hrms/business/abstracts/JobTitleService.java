package kodlama.io.hrms.business.abstracts;

import java.util.List;

import kodlama.io.hrms.entity.concretes.JobTitle;

public interface JobTitleService {

	List<JobTitle> getAll();
}
