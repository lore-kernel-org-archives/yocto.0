Subject: Re: #apt #linux #yocto #raspberrypi., apt, gcc, sudo not present
To: yocto@lists.yoctoproject.org
From: "Mark Van De Vyver" <mark@taqtiqa.com>
X-Originating-Location: Hurstville, New South Wales, AU (115.69.5.21)
X-Originating-Platform: Linux Firefox 76
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 27 May 2020 23:02:25 -0700
References: <AWwo.1590573982221245323.TyTi@lists.yoctoproject.org>
In-Reply-To: <AWwo.1590573982221245323.TyTi@lists.yoctoproject.org>
Message-ID: <10681.1590645745182172481@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KTuQsQI3kxGk2MMa7Hal"

--KTuQsQI3kxGk2MMa7Hal
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Siddhartha,
Caveat: This is generally what I've done, and not specific to any rpi or r=
hel setup....

If you run `bitbake -e core-image-base | grep "^IMAGE_FEATURES" you'll be =
able to see what was configured.
You can also filter *_FEATURES to get a better idea of what went on in ter=
ms of machine and compatible features.

Next, with that data in mind you can read the ./<build-folder>/bitbake- co=
okerdaemon.log
When reading this you will see various files are loaded - opening each of =
them in turn you might see some code that turns off what you expected to ha=
ve installed.
Or you might notice that the packages you expected to be installed were ne=
ver put forward for installation.

Not sure if that helps.=C2=A0 I've run into some wrinkles where a package =
wasn't available, and became so only after adding a 'seemingly' (to me that=
 is) unrelated layer - but in those cases I got a warning the package could=
 not be found.=C2=A0 Sounds like that **is not** happening here.=C2=A0 Sorr=
y I can't be of better assistance.

HTH?

--KTuQsQI3kxGk2MMa7Hal
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Siddhartha,</div>
<div>Caveat: This is generally what I've done, and not specific to any rpi=
 or rhel setup....</div>
<div>&nbsp;</div>
<div>If you run `bitbake -e core-image-base | grep "^IMAGE_FEATURES" you'l=
l be able to see what was configured.</div>
<div>You can also filter *_FEATURES to get a better idea of what went on i=
n terms of machine and compatible features.</div>
<div>&nbsp;</div>
<div>Next, with that data in mind you can read the ./&lt;build-folder&gt;/=
bitbake-<wbr />cookerdaemon.log</div>
<div>When reading this you will see various files are loaded - opening eac=
h of them in turn you might see some code that turns off what you expected =
to have installed.</div>
<div>Or you might notice that the packages you expected to be installed we=
re never put forward for installation.</div>
<div>&nbsp;</div>
<div>Not sure if that helps.&nbsp; I've run into some wrinkles where a pac=
kage wasn't available, and became so only after adding a 'seemingly' (to me=
 that is) unrelated layer - but in those cases I got a warning the package =
could not be found.&nbsp; Sounds like that **is not** happening here.&nbsp;=
 Sorry I can't be of better assistance.<br /><br />HTH?<br /><br /></div>
<div>&nbsp;</div>

--KTuQsQI3kxGk2MMa7Hal--
