package githubactiontest.githubaction.service;

import githubactiontest.githubaction.domian.TestDomain;
import githubactiontest.githubaction.domian.TestRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class TestService {

    private TestRepository testRepository;

    public TestDomain save(TestDomain testDomain) {
        return testRepository.save(testDomain);
    }
}
