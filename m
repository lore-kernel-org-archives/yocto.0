Subject: Re: Reproducible builds and RPM packages
To: yocto@lists.yoctoproject.org
From: "Jate Sujjavanich" <jatedev@gmail.com>
X-Originating-Location: Tallahassee, Florida, US (69.254.209.160)
X-Originating-Platform: Mac Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 Nov 2020 15:43:28 -0800
References: <78CCF97C-A2F1-4755-AFCC-726ED8400D3B@iki.fi>
In-Reply-To: <78CCF97C-A2F1-4755-AFCC-726ED8400D3B@iki.fi>
Message-ID: <27035.1605224608148078000@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="oWgVhf8QHG7vAcYx7Kl7"

--oWgVhf8QHG7vAcYx7Kl7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have sussed out several behaviors of the image build having to do with re=
producible builds. It seems like bitbake creates the rpm with the correct m=
odification times per the reproducible_builds bbclass. When do_rootfs insta=
lls the packages, the timestamps seem correct.

The function reproducible_final_image_task sets all files in rootfs to be =
REPRODUCIBLE_TIMESTAMP_ROOTFS which is the last commit time in poky by defa=
ult. This occurs after package installation and before image creation.

When the image creation code runs, it seems like each utility has differen=
t behavior on respecting SOURCE_DATE_EPOCH in the environment. The ext3 uti=
lity allowed mtime's beyond the default value of 0. The squashfs utility en=
forced the restriction of no mtime's being beyond 0 seconds since the epoch=
. Once I set this to the build timestamp (DATETIME) in the image recipe, th=
e squashfs image had correct times.

So to get this working, you'd need to disable reproducible_final_image_tas=
k, and make sure the image creation utility is not wiping out the modificat=
ion times of files created by rpm.

I'd argue that we'd want reproducible_final_image_task to not override all=
 the mtime's of files. We probably have to check the other file system type=
 to see their behavior with SOURCE_DATE_EPOCH as well.

- Jate

--oWgVhf8QHG7vAcYx7Kl7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have sussed out several behaviors of the image build having to do with re=
producible builds. It seems like bitbake creates the rpm with the correct m=
odification times per the reproducible_builds bbclass. When do_rootfs insta=
lls the packages, the timestamps seem correct.<br /><br />The function repr=
oducible_final_image_task sets all files in rootfs to be REPRODUCIBLE_TIMES=
TAMP_ROOTFS which is the last commit time in poky by default. This occurs a=
fter package installation and before image creation.<br /><br />When the im=
age creation code runs, it seems like each utility has different behavior o=
n respecting SOURCE_DATE_EPOCH in the environment. The ext3 utility allowed=
 mtime's beyond the default value of 0. The squashfs utility enforced the r=
estriction of no mtime's being beyond 0 seconds since the epoch. Once I set=
 this to the build timestamp (DATETIME) in the image recipe, the squashfs i=
mage had correct times.<br /><br />So to get this working, you'd need to di=
sable reproducible_final_image_task, and make sure the image creation utili=
ty is not wiping out the modification times of files created by rpm.<br /><=
br />I'd argue that we'd want reproducible_final_image_task to not override=
 all the mtime's of files. We probably have to check the other file system =
type to see their behavior with SOURCE_DATE_EPOCH as well.<br /><br />- Jat=
e

--oWgVhf8QHG7vAcYx7Kl7--
