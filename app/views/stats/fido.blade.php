  @if (Auth::check())
     <p>Your Personal Feeds are: <span id="{{fido(Auth::user()->cat_one)}}">{{fido(Auth::user()->cat_one)}}</span> |

     <span id="{{fido(Auth::user()->cat_two)}}">{{fido(Auth::user()->cat_two)}}</span> | 

     <span id="{{fido(Auth::user()->cat_three)}}">{{fido(Auth::user()->cat_three)}}</span>

     </p>
    @else 
 @endif