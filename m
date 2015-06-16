Return-Path: <florian@fnbk.cc>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D36B4E009E6; Tue, 16 Jun 2015 00:01:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 875ECE009A1
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 00:01:33 -0700 (PDT)
Received: by igblz2 with SMTP id lz2so7787442igb.1
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 00:01:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=7qLaYioqmpXlktINgppV3I8VrEP9IIncRhk+2UrWUlo=;
	b=iszKocBZa5Co4Kw7wMUo9N6kz7CXPzGlAFkwpQM+I2KF29x238X3FU6jzyhxz2nM0S
	lJ7QVT0SkzdEXuFLHVon8wZAjHNJpdtHlBV5XntSxudj+jgbTi/Q+p1mm7mr4ER9t7Jl
	+KVuNV4zyQGL8TjuSqTzzSyB7x/oFUr/4DzTHTwRXrF//Bh4egGqSMWK6lEfETGSfBYh
	bHsydyTRdAhEKHT93pzt6PXtcEBz/oJGS0BmMxVueTKE3AXSmvOuVgvkjDQBjiUv41BL
	Vr5l/pjng0VqJHTf9W+SB2fpvU+NQObftYhGSJpB1UVqP34DaK+JepoS78KjHu79U9OF
	GeYw==
X-Gm-Message-State: ALoCoQnQDI4G7wWsjRrZ1q4oGYbSq0RLkNi8kavHrC0czm6g3goBt3dE6noSs9D/YoZ0KKCPtu1q
MIME-Version: 1.0
X-Received: by 10.50.17.104 with SMTP id n8mr25598387igd.21.1434438093486;
	Tue, 16 Jun 2015 00:01:33 -0700 (PDT)
Received: by 10.79.116.145 with HTTP; Tue, 16 Jun 2015 00:01:33 -0700 (PDT)
Date: Tue, 16 Jun 2015 09:01:33 +0200
Message-ID: <CALgoR9NG-nVj7qaSSbAVjmhEWSpWaq_oGqFvA0yq+YM9nisF_g@mail.gmail.com>
From: Florian Boehmak <florian@fnbk.cc>
To: yocto@yoctoproject.org
Subject: [prelink-cross] error while loading shared libraries: ld-linux.so.3
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
X-List-Received-Date: Tue, 16 Jun 2015 07:01:39 -0000
Content-Type: multipart/alternative; boundary=089e0118398a03db0705189d2594

--089e0118398a03db0705189d2594
Content-Type: text/plain; charset=UTF-8

Hi,

I am having difficulties to cross-prelink a simple hello world program.
Prelinking for my x86 machine works fine (host system) but when using the
arm cross-compile toolchain I get the error:

prelink: bin_arm/hello: Could not parse `/usr/local/sbin//prelink-rtld:
error while loading shared libraries: ld-linux.so.3'

If I understand it correctly then prelink-rtld emulates ld-linux.so but why
is it parsed by rtld?

Here are my files:

# main.cpp

#include <stdio.h>
#include "world.h"
int main (int argc, char *argv[])
{
fprintf(stdout, "hello\n");
World w;
w.Str();
return 0;
}


# world.cpp

#include "world.h"
void World::Str()
{
fprintf(stdout, "world\n");
}


# prelink_arm.conf

-l arm-2012.03/arm-none-linux-gnueabi/libc/lib
-h arm-2012.03/arm-none-linux-gnueabi/libc/lib
-l arm-2012.03/arm-none-linux-gnueabi/libc/usr/lib
-h arm-2012.03/arm-none-linux-gnueabi/libc/usr/lib


# compiling

../arm-2012.03/bin/arm-none-linux-gnueabi-gcc -Wall -fPIC -shared -Iinclude
-o lib_arm/libworld.so src/world.cpp
arm-2012.03/bin/arm-none-linux-gnueabi-gcc -Wall -Iworld/include
-Lworld/lib_arm/ -lworld -o bin_arm/hello src/main.cpp


# prelink-cross

PATH=/usr/local/sbin prelink --verbose --cache-file=cache/prelink_arm.cache
--config-file=prelink_arm.conf
--ld-library-path="world/lib_arm;arm-2012.03/arm-none-linux-gnueabi/libc/lib;arm-2012.03/arm-none-linux-gnueabi/libc/usr/lib;"
-h bin_arm/hello


I am sort of stuck. Could you point me in the right direction. What am I
missing or doing wrong?
Thank you.

Cheers
Florian

Ps. I have put together the code on github this would be the
"shared-library" branch.
https://github.com/fnbk/prelink-cross-example

Ps. I posted a similar question on stackoverflow, cross-prelinking but
without shared libraries.
http://stackoverflow.com/q/30849060/5011904

--089e0118398a03db0705189d2594
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I am having difficulties=
 to cross-prelink a simple hello world program. Prelinking for my x86 machi=
ne works fine (host system) but when using the arm cross-compile toolchain =
I get the error:=C2=A0</div><div><br></div><div>prelink: bin_arm/hello: Cou=
ld not parse `/usr/local/sbin//prelink-rtld: error while loading shared lib=
raries: ld-linux.so.3&#39;</div><div><br></div><div>If I understand it corr=
ectly then prelink-rtld emulates ld-linux.so but why is it parsed by rtld?<=
/div><div><br></div><div>Here are my files:</div><div><br></div><div># main=
.cpp</div><div><br></div><div>#include &lt;stdio.h&gt;</div><div>#include &=
quot;world.h&quot;</div><div>int main (int argc, char *argv[])</div><div>{<=
/div><div><span class=3D"" style=3D"white-space:pre">	</span>fprintf(stdout=
, &quot;hello\n&quot;);</div><div><span class=3D"" style=3D"white-space:pre=
">	</span>World w;</div><div><span class=3D"" style=3D"white-space:pre">	</=
span>w.Str();</div><div><span class=3D"" style=3D"white-space:pre">	</span>=
return 0;</div><div>}</div><div><br></div><div><br></div><div># world.cpp</=
div><div><br></div><div>#include &quot;world.h&quot;</div><div>void World::=
Str()</div><div>{</div><div><span class=3D"" style=3D"white-space:pre">	</s=
pan>fprintf(stdout, &quot;world\n&quot;);</div><div>}</div><div><br></div><=
div><br></div><div># prelink_arm.conf</div><div><br></div><div>-l arm-2012.=
03/arm-none-linux-gnueabi/libc/lib=C2=A0</div><div>-h arm-2012.03/arm-none-=
linux-gnueabi/libc/lib=C2=A0</div><div>-l arm-2012.03/arm-none-linux-gnueab=
i/libc/usr/lib</div><div>-h arm-2012.03/arm-none-linux-gnueabi/libc/usr/lib=
</div><div><br></div><div><br></div><div># compiling</div><div><br></div><d=
iv>../arm-2012.03/bin/arm-none-linux-gnueabi-gcc -Wall -fPIC -shared -Iincl=
ude -o lib_arm/libworld.so src/world.cpp=C2=A0</div><div>arm-2012.03/bin/ar=
m-none-linux-gnueabi-gcc -Wall -Iworld/include -Lworld/lib_arm/ -lworld -o =
bin_arm/hello src/main.cpp</div><div><br></div><div><br></div><div># prelin=
k-cross</div><div><br></div><div>PATH=3D/usr/local/sbin prelink --verbose -=
-cache-file=3Dcache/prelink_arm.cache --config-file=3Dprelink_arm.conf --ld=
-library-path=3D&quot;world/lib_arm;arm-2012.03/arm-none-linux-gnueabi/libc=
/lib;arm-2012.03/arm-none-linux-gnueabi/libc/usr/lib;&quot; -h bin_arm/hell=
o</div><div><br></div><div><br></div><div>I am sort of stuck. Could you poi=
nt me in the right direction. What am I missing or doing wrong?</div><div>T=
hank you.</div><div><br></div><div>Cheers</div><div>Florian</div><div><br><=
/div><div>Ps. I have put together the code on github this would be the &quo=
t;shared-library&quot; branch.</div><div><a href=3D"https://github.com/fnbk=
/prelink-cross-example">https://github.com/fnbk/prelink-cross-example</a>=
=C2=A0</div><div><br></div><div>Ps. I posted a similar question on stackove=
rflow, cross-prelinking but without shared libraries.</div><div><a href=3D"=
http://stackoverflow.com/q/30849060/5011904">http://stackoverflow.com/q/308=
49060/5011904</a></div><div><br></div><div>=C2=A0</div><div><br></div><div>=
<br></div><div><br></div><div><br></div><div><br></div><div><br></div><div>=
<br></div><div><br></div>
</div>

--089e0118398a03db0705189d2594--
