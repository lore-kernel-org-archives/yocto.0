Subject: poky oe-init-build-env doesn't update local.conf with changes from local.conf.sample
To: yocto@lists.yoctoproject.org
From: "Andy Basey" <a.basey@landguardsystems.com>
X-Originating-Location: Bournemouth, England, GB (176.25.247.101)
X-Originating-Platform: Windows Chrome 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 10 Nov 2020 01:56:01 -0800
Message-ID: <0vid.1605002161880917449.Q6oT@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6P4WcMlBMjdM5ZLUeRix"

--6P4WcMlBMjdM5ZLUeRix
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have an existing build with packages defined in my own layer outside the =
build directory in the local.conf.sample
I want to add a package so I add it to my local.conf.sample and then sourc=
e oe-init-build-env again
It doesn't overwrite the local.conf in poky/build/conf as it already exist=
s

Is there a preferred way to make it update?
Or do I just need to manually delete the files in that directory and then =
run source oe-init-build-env?
I don't want to delete the whole build directory as it takes far too long =
to do it again from scratch

For reference I am using the local.conf.sample because that is my source c=
ontrollable config file

--6P4WcMlBMjdM5ZLUeRix
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have an existing build with packages defined in my own layer outside the =
build directory in the local.conf.sample<br />I want to add a package so I =
add it to my local.conf.sample and then source oe-init-build-env again<br /=
>It doesn't overwrite the local.conf in poky/build/conf as it already exist=
s<br /><br />Is there a preferred way to make it update?<br />Or do I just =
need to manually delete the files in that directory and then run source oe-=
init-build-env?<br />I don't want to delete the whole build directory as it=
 takes far too long to do it again from scratch<br /><br />For reference I =
am using the local.conf.sample because that is my source controllable confi=
g file

--6P4WcMlBMjdM5ZLUeRix--
