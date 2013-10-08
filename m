Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEB18E0167E
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2013 08:31:18 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id q58so4374762wes.3
	for <yocto@yoctoproject.org>; Tue, 08 Oct 2013 08:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=J1Q4FO2ax97tJiFJALB4tXf9w3EKw8M4gEvYVoDY9us=;
	b=HK5WcQJ3G7cfQM3cHlqbGthO54g1ASJwQ5ckR59+oXOcfFnMd7dSzbe4SJKlCZQcr4
	CxW7D4fA2liR6POelzGgGYSvL/SMooiiwRSskHSmQao9GwWoRhn0x5w0KvELqOsioEo5
	EbXZj8fJHC3ObXXZsOt7d6BGZeZ8rEd2qrtf6oV9X5DB22WcbODLV5Kce+hpDo1Em60B
	LzI1gSShjGdT65QNoDJe3YN5anu+rFyxVC1Fx+bx9LlETk9UWffrr6yIb2hasJHF0Ib0
	EOUK2YxZ+eMWbCqzQX4/o/biDBxdNrmjDdklLM69yTQ7nKPAf6np5+j1EMI9/CLA375B
	ewLA==
X-Received: by 10.194.109.68 with SMTP id hq4mr2382495wjb.12.1381246277385;
	Tue, 08 Oct 2013 08:31:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.69 with HTTP; Tue, 8 Oct 2013 08:30:57 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 8 Oct 2013 17:30:57 +0200
Message-ID: <CAAGt+t3L8EwWqd8gtm_ZZB037F+pMoY9wNnmbJfM3UmX828khw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: rpm5, linux-3.4.3 and gcc fetch error?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 Oct 2013 15:31:20 -0000
Content-Type: multipart/alternative; boundary=089e0102e6dab603e104e83c753c

--089e0102e6dab603e104e83c753c
Content-Type: text/plain; charset=ISO-8859-1

Hi,

When I build Yocto for the first time, I get rpm5, linux-3.4.3 and gcc
fetch error. I haven't seen this before. Do I need to update all these
recipes?

ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
wget: unable to resolve host address `www.rpm5.org'

ERROR: Function failed: Fetcher failure for URL: '
http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.9-0.20120508.src.rpm;extract=rpm-5.4.9.tar.gz'.
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in:
/home/zaif/yocto/build/tmp/work/x86_64-linux/rpm-native-5.4.9-r52/temp/log.do_fetch.13322
ERROR: Task 79
(virtual:native:/home/zaif/yocto/poky/meta/recipes-devtools/rpm/rpm_5.4.9.bb,
do_fetch) failed with exit code '1'
WARNING: Failed to fetch URL
ftp://ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2, attempting MIRRORS
if available
WARNING: Failed to fetch URL
http://kernel.org/pub/linux/kernel/v3.0/linux-3.4.3.tar.bz2, attempting
MIRRORS if available
WARNING: Failed to fetch URL
http://download.oracle.com/berkeley-db/db-5.3.15.tar.gz, attempting MIRRORS
if available
ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
wget: unable to resolve host address `kernel.org'

ERROR: Function failed: Fetcher failure for URL: '
http://kernel.org/pub/linux/kernel/v3.0/linux-3.4.3.tar.bz2'. Unable to
fetch URL from any source.
ERROR: Logfile of failure stored in:
/home/zaif/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/linux-libc-headers-3.4.3-r0/temp/log.do_fetch.1377
ERROR: Task 997
(/home/zaif/yocto/poky/meta/recipes-kernel/linux-libc-headers/
linux-libc-headers_3.4.3.bb, do_fetch) failed with exit code '1'
ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
wget: unable to resolve host address `download.oracle.com'

ERROR: Function failed: Fetcher failure for URL: '
http://download.oracle.com/berkeley-db/db-5.3.15.tar.gz'. Unable to fetch
URL from any source.
ERROR: Logfile of failure stored in:
/home/zaif/yocto/build/tmp/work/x86_64-linux/db-native-5.3.15-r8/temp/log.do_fetch.494
ERROR: Task 1238
(virtual:native:/home/zaif/yocto/poky/meta/recipes-support/db/db_5.3.15.bb,
do_fetch) failed with exit code '1'
ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
wget: unable to resolve host address `ftp.gnu.org'

ERROR: Function failed: Fetcher failure for URL: '
ftp://ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2'. Unable to fetch URL
from any source.
ERROR: Logfile of failure stored in:
/home/zaif/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-cross-initial-4.7.2-r13/temp/log.do_fetch.21121
ERROR: Task 985 (/home/zaif/yocto/poky/meta/recipes-devtools/gcc/
gcc-cross-initial_4.7.bb, do_fetch) failed with exit code '1'

Summary: 4 tasks failed:
virtual:native:/home/zaif/yocto/poky/meta/recipes-devtools/rpm/rpm_5.4.9.bb,
do_fetch
  /home/zaif/yocto/poky/meta/recipes-kernel/linux-libc-headers/
linux-libc-headers_3.4.3.bb, do_fetch
  virtual:native:/home/zaif/yocto/poky/meta/recipes-support/db/db_5.3.15.bb,
do_fetch
  /home/zaif/yocto/poky/meta/recipes-devtools/gcc/gcc-cross-initial_4.7.bb,
do_fetch

-- 
Regards,
Zafrullah Syed

--089e0102e6dab603e104e83c753c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>When I build Yocto for the first ti=
me, I get rpm5, linux-3.4.3 and gcc fetch error. I haven&#39;t seen this be=
fore. Do I need to update all these recipes?</div><div><br></div><div><div>

<div>ERROR: Fetcher failure: Fetch command failed with exit code 4, output:=
</div>
<div>wget: unable to resolve host address `<a href=3D"http://www.rpm5.org" =
target=3D"_blank">www.rpm5.org</a>&#39;</div><div><br></div><div>ERROR: Fun=
ction failed: Fetcher failure for URL: &#39;<a href=3D"http://www.rpm5.org/=
files/rpm/rpm-5.4/rpm-5.4.9-0.20120508.src.rpm;extract=3Drpm-5.4.9.tar.gz" =
target=3D"_blank">http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.9-0.2012050=
8.src.rpm;extract=3Drpm-5.4.9.tar.gz</a>&#39;. Unable to fetch URL from any=
 source.</div>


<div>ERROR: Logfile of failure stored in: /home/zaif/yocto/build/tmp/work/x=
86_64-linux/rpm-native-5.4.9-r52/temp/log.do_fetch.13322</div><div>ERROR: T=
ask 79 (virtual:native:/home/zaif/yocto/poky/meta/recipes-devtools/rpm/<a h=
ref=3D"http://rpm_5.4.9.bb" target=3D"_blank">rpm_5.4.9.bb</a>, do_fetch) f=
ailed with exit code &#39;1&#39;</div>


<div>WARNING: Failed to fetch URL <a href=3D"ftp://ftp.gnu.org/gnu/gcc/gcc-=
4.7.2/gcc-4.7.2.tar.bz2" target=3D"_blank">ftp://ftp.gnu.org/gnu/gcc/gcc-4.=
7.2/gcc-4.7.2.tar.bz2</a>, attempting MIRRORS if available</div><div>WARNIN=
G: Failed to fetch URL <a href=3D"http://kernel.org/pub/linux/kernel/v3.0/l=
inux-3.4.3.tar.bz2" target=3D"_blank">http://kernel.org/pub/linux/kernel/v3=
.0/linux-3.4.3.tar.bz2</a>, attempting MIRRORS if available</div>


<div>WARNING: Failed to fetch URL <a href=3D"http://download.oracle.com/ber=
keley-db/db-5.3.15.tar.gz" target=3D"_blank">http://download.oracle.com/ber=
keley-db/db-5.3.15.tar.gz</a>, attempting MIRRORS if available</div><div>ER=
ROR: Fetcher failure: Fetch command failed with exit code 4, output:</div>


<div>wget: unable to resolve host address `<a href=3D"http://kernel.org" ta=
rget=3D"_blank">kernel.org</a>&#39;</div><div><br></div><div>ERROR: Functio=
n failed: Fetcher failure for URL: &#39;<a href=3D"http://kernel.org/pub/li=
nux/kernel/v3.0/linux-3.4.3.tar.bz2" target=3D"_blank">http://kernel.org/pu=
b/linux/kernel/v3.0/linux-3.4.3.tar.bz2</a>&#39;. Unable to fetch URL from =
any source.</div>


<div>ERROR: Logfile of failure stored in: /home/zaif/yocto/build/tmp/work/a=
rmv7a-vfp-neon-poky-linux-gnueabi/linux-libc-headers-3.4.3-r0/temp/log.do_f=
etch.1377</div><div>ERROR: Task 997 (/home/zaif/yocto/poky/meta/recipes-ker=
nel/linux-libc-headers/<a href=3D"http://linux-libc-headers_3.4.3.bb" targe=
t=3D"_blank">linux-libc-headers_3.4.3.bb</a>, do_fetch) failed with exit co=
de &#39;1&#39;</div>


<div>ERROR: Fetcher failure: Fetch command failed with exit code 4, output:=
</div><div>wget: unable to resolve host address `<a href=3D"http://download=
.oracle.com" target=3D"_blank">download.oracle.com</a>&#39;</div><div><br>

</div><div>ERROR: Function failed: Fetcher failure for URL: &#39;<a href=3D=
"http://download.oracle.com/berkeley-db/db-5.3.15.tar.gz" target=3D"_blank"=
>http://download.oracle.com/berkeley-db/db-5.3.15.tar.gz</a>&#39;. Unable t=
o fetch URL from any source.</div>


<div>ERROR: Logfile of failure stored in: /home/zaif/yocto/build/tmp/work/x=
86_64-linux/db-native-5.3.15-r8/temp/log.do_fetch.494</div><div>ERROR: Task=
 1238 (virtual:native:/home/zaif/yocto/poky/meta/recipes-support/db/<a href=
=3D"http://db_5.3.15.bb" target=3D"_blank">db_5.3.15.bb</a>, do_fetch) fail=
ed with exit code &#39;1&#39;</div>


<div>ERROR: Fetcher failure: Fetch command failed with exit code 4, output:=
</div><div>wget: unable to resolve host address `<a href=3D"http://ftp.gnu.=
org" target=3D"_blank">ftp.gnu.org</a>&#39;</div><div><br></div><div>ERROR:=
 Function failed: Fetcher failure for URL: &#39;<a href=3D"ftp://ftp.gnu.or=
g/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2" target=3D"_blank">ftp://ftp.gnu.org/=
gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2</a>&#39;. Unable to fetch URL from any =
source.</div>


<div>ERROR: Logfile of failure stored in: /home/zaif/yocto/build/tmp/work/a=
rmv7a-vfp-neon-poky-linux-gnueabi/gcc-cross-initial-4.7.2-r13/temp/log.do_f=
etch.21121</div><div>ERROR: Task 985 (/home/zaif/yocto/poky/meta/recipes-de=
vtools/gcc/<a href=3D"http://gcc-cross-initial_4.7.bb" target=3D"_blank">gc=
c-cross-initial_4.7.bb</a>, do_fetch) failed with exit code &#39;1&#39;</di=
v>

<div><br></div><div><div><div>Summary: 4 tasks failed:</div></div><div>virt=
ual:native:/home/zaif/yocto/poky/meta/recipes-devtools/rpm/<a href=3D"http:=
//rpm_5.4.9.bb">rpm_5.4.9.bb</a>, do_fetch<br></div><div>=A0 /home/zaif/yoc=
to/poky/meta/recipes-kernel/linux-libc-headers/<a href=3D"http://linux-libc=
-headers_3.4.3.bb">linux-libc-headers_3.4.3.bb</a>, do_fetch</div>

<div>=A0 virtual:native:/home/zaif/yocto/poky/meta/recipes-support/db/<a hr=
ef=3D"http://db_5.3.15.bb">db_5.3.15.bb</a>, do_fetch</div><div>=A0 /home/z=
aif/yocto/poky/meta/recipes-devtools/gcc/<a href=3D"http://gcc-cross-initia=
l_4.7.bb">gcc-cross-initial_4.7.bb</a>, do_fetch</div>

</div><div><br></div>
</div>-- <br><span style=3D"font-family:arial,sans-serif;font-size:13px;bor=
der-collapse:collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</s=
pan><div><font color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"=
border-collapse:collapse"><br>


</span></font></div>
</div></div>

--089e0102e6dab603e104e83c753c--
