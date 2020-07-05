Subject: Missing libc.a for RPI4 #sdk #yocto #linux
To: yocto@lists.yoctoproject.org
From: "Pankaj  Vinadrao Joshi" <pankaj.vj@exaleapsemi.com>
X-Originating-Location: Pune, Maharashtra, IN (49.35.202.65)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 05 Jul 2020 07:02:21 -0700
Message-ID: <h1NK.1593957741263849017.a8nR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xTw6mehBVK5AC0hgF8PT"

--xTw6mehBVK5AC0hgF8PT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
i have built an image for the raspberrypi4 but i am not able to find libc.=
a file in /usr/lib and due to which i am getting an error w.r.t. static lin=
king
I am attaching the error which i am getting while compiling the program wi=
th --static option.

make -C /home/root/lkp-tests/bin/event
make: Entering directory '/home/root/lkp-tests/bin/event'
gcc -static=C2=A0 wakeup.o=C2=A0=C2=A0 -o wakeup
*/usr/lib/gcc/aarch64-oe-linux/10.1.0/../../../../aarch64-oe-linux/bin/ld:=
 cannot find -lc*
collect2: error: ld returned 1 exit status
make: *** [<builtin>: wakeup] Error 1

Can someone suggest me how i can resolve this error,why i am not getting l=
ibc.a file in /usr/lib??Kindly help

Thanks!

--xTw6mehBVK5AC0hgF8PT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />i have built an image for the raspberrypi4 but i am not able to fi=
nd libc.a file in /usr/lib and due to which i am getting an error w.r.t. st=
atic linking<br />I am attaching the error which i am getting while compili=
ng the program with --static option.<br /><br />
<div style=3D"font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Se=
goe UI Emoji', sans-serif;">make -C /home/root/lkp-tests/bin/event<br />mak=
e: Entering directory '/home/root/lkp-tests/bin/event'<br />gcc -static&nbs=
p; wakeup.o&nbsp;&nbsp; -o wakeup<br /><strong>/usr/lib/gcc/aarch64-oe-linu=
x/10.1.0/../../../../aarch64-oe-linux/bin/ld: cannot find -lc</strong><br /=
>collect2: error: ld returned 1 exit status<br />make: *** [&lt;builtin&gt;=
: wakeup] Error 1<br /><br />Can someone suggest me how i can resolve this =
error,why i am not getting libc.a file in /usr/lib??Kindly help<br /><br />=
Thanks!</div>

--xTw6mehBVK5AC0hgF8PT--
