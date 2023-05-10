package Repository;

import Entities.CartDetail;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartDetailRepository extends CrudRepository<CartDetail, Integer> {

}
