Return-Path: <florian@fnbk.cc>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A974E00939; Tue, 16 Jun 2015 15:57:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCC17E00496
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 15:57:00 -0700 (PDT)
Received: by iecrd14 with SMTP id rd14so22896011iec.3
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 15:56:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=4XMfrSGA7MnGXzCe41A3eFZ+wawROsnOZT+kaUO2JP8=;
	b=mkQmk4KTt9DgLNFrfTqld163A0z91FVqDff5UnsrbJ3mQWWPzkjPW+2BN3cgtcru9+
	9xRRR0zHwhPvdfW+LoqyCehwJsORYD8BUDuU9a6nwGwc53bV6MsilBIgM82hSD5fm5N6
	Zk9tG4qBLSfPgYH4Xy/IUnceWa1f5TxyPuDt4/ABx8TZLodQeIJ9dW6UUgN76xlEeRXh
	X158DJcywvAYuPs1Eeud+zapr8w7RNEbsOB/5WnB1x/EnmZOA3pJcraRlg/afGaPj8hG
	AtDayzrkwKhchyzdNcFo0tTiHqeAv3cEH/EAihGC4VZKDqDI21Z2q5tPONCC5CzCJJW4
	ORGw==
X-Gm-Message-State: ALoCoQnlrhwu+1utCqAfDQ2NUGQvoNMTB7zJZkd3Kb4SgWiT9DQeF43DdwEMYXearod/y2Cq//1B
MIME-Version: 1.0
X-Received: by 10.50.142.9 with SMTP id rs9mr6547685igb.17.1434495419723; Tue,
	16 Jun 2015 15:56:59 -0700 (PDT)
Received: by 10.79.116.145 with HTTP; Tue, 16 Jun 2015 15:56:59 -0700 (PDT)
In-Reply-To: <55807507.1080906@windriver.com>
References: <CALgoR9NG-nVj7qaSSbAVjmhEWSpWaq_oGqFvA0yq+YM9nisF_g@mail.gmail.com>
	<55807507.1080906@windriver.com>
Date: Wed, 17 Jun 2015 00:56:59 +0200
Message-ID: <CALgoR9N55VS2D+UzMmdShBUmQBes_tEj8KqTi7Ff9UtO8pV7Mw@mail.gmail.com>
From: Florian Boehmak <florian@fnbk.cc>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross] error while loading shared libraries: ld-linux.so.3
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
X-List-Received-Date: Tue, 16 Jun 2015 22:57:05 -0000
Content-Type: multipart/alternative; boundary=001a11c2ff1cece8ef0518aa7d3b

--001a11c2ff1cece8ef0518aa7d3b
Content-Type: text/plain; charset=UTF-8

> The error indicates that it found a library required called
'ld-linux.so.3', but
> could not find that in the "path".  (The path generally being the sysroot
path
> passed to the rtld.)

I tried to move the files to their location in sysroot:

arm-2012.03/arm-none-linux-gnueabi/libc/usr/local/include/world.h
arm-2012.03/arm-none-linux-gnueabi/libc/usr/local/lib/libworld.so
arm-2012.03/arm-none-linux-gnueabi/libc/usr/local/bin/hello
arm-2012.03/arm-none-linux-gnueabi/libc/etc/prelink.conf


> What command did you use to run the prelinker?  And does your sysroot
contain
> the /lib/ld-linux.so.3?

prelink command:

PATH=/usr/local/sbin prelink --verbose
--root=arm-2012.03/arm-none-linux-gnueabi/libc
--cache-file=/etc/cache/prelink.cache --config-file=/etc/prelink.conf
--ld-library-path="/usr/local/lib;/lib;/usr/lib;" -h /usr/local/bin/hello


error message:

prelink: /lib/libdl-2.15.so is not present in any config file directories,
nor was specified on command line
prelink: /lib/libc-2.15.so is not present in any config file directories,
nor was specified on command line
prelink: /lib/libgcc_s.so.1 is not present in any config file directories,
nor was specified on command line
prelink: /lib/ld-2.15.so is not present in any config file directories, nor
was specified on command line
Laying out 1 libraries in virtual address space 41000000-50000000
Assigned virtual address space slots for libraries:
/usr/local/lib/libworld.so
41000000-410086d0
prelink: Could not prelink /usr/lib/bin/localedef because its dependency
/lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/POSIX_V6_ILP32_OFFBIG because its
dependency /lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/zdump because its dependency
/lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/POSIX_V7_ILP32_OFF32 because its
dependency /lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/local/lib/libworld.so because its
dependency /lib/libgcc_s.so.1 could not be prelinked
prelink: Could not prelink /usr/local/bin/hello because its dependency
/usr/local/lib/libworld.so could not be prelinked
prelink: Could not prelink /usr/lib/bin/pldd because its dependency
/lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/zic because its dependency
/lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/sprof because its dependency
/lib/libdl.so.2 could not be prelinked
prelink: Could not prelink /usr/lib/bin/POSIX_V6_ILP32_OFF32 because its
dependency /lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/gdbserver because its dependency
/lib/libdl.so.2 could not be prelinked
prelink: Could not prelink /usr/lib/bin/XBS5_ILP32_OFFBIG because its
dependency /lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/XBS5_ILP32_OFF32 because its
dependency /lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/makedb because its dependency
/lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/pcprofiledump because its
dependency /lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/iconv because its dependency
/lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/locale because its dependency
/lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/gencat because its dependency
/lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/POSIX_V7_ILP32_OFFBIG because its
dependency /lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/rpcgen because its dependency
/lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/getent because its dependency
/lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/getconf because its dependency
/lib/libc.so.6 could not be prelinked
prelink: Could not prelink /usr/lib/bin/iconvconfig because its dependency
/lib/libc.so.6 could not be prelinked


prelink.conf

-l /lib
-h /lib
-l /usr/lib
-h /usr/lib
-l /usr/local/lib
-h /usr/local/lib


Now there is no error message from rtld and libworld.so seems to be found.
But what's the problem with the folling libraries?

libdl-2.15.so
libc-2.15.so
libgcc_s.so.1
ld-2.15.so


I can see them in this folder arm-2012.03/arm-none-linux-gnueabi/libc/lib:

-rwxr-xr-x 1 developer users  177212 10. Jun 18:43 ld-2.15.so
lrwxrwxrwx 1 developer users      10 10. Jun 18:43 ld-linux.so.3 ->
ld-2.15.so
-rwxr-xr-x 1 developer users 1777390 10. Jun 18:43 libc-2.15.so
lrwxrwxrwx 1 developer users      12 10. Jun 18:43 libc.so.6 -> libc-2.15.so
-rwxr-xr-x 1 developer users   26841 10. Jun 18:43 libdl-2.15.so
lrwxrwxrwx 1 developer users      13 10. Jun 18:43 libdl.so.2 ->
libdl-2.15.so
-rw-r--r-- 1 developer users     135 10. Jun 18:43 libgcc_s.so
-rw-r--r-- 1 developer users 3190583 10. Jun 18:43 libgcc_s.so.1
lrwxrwxrwx 1 developer users      13 10. Jun 18:43 libld-linux.so.3 ->
ld-linux.so.3



I have also put the code on github for reference. Where is the mistake? - I
think we are almost there :-)
https://github.com/fnbk/prelink-cross-example/tree/shared-library


Greetings
Florian

--001a11c2ff1cece8ef0518aa7d3b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; The error indicates that it found a library requ=
ired called &#39;ld-linux.so.3&#39;, but<br>&gt;=C2=A0could not find that i=
n the &quot;path&quot;.=C2=A0 (The path generally being the sysroot path<br=
>&gt;=C2=A0passed to the rtld.)<br></div><div><br></div><div>I tried to mov=
e the files to their location in sysroot:</div><div><br></div><div>arm-2012=
.03/arm-none-linux-gnueabi/libc/usr/local/include/world.h</div><div>arm-201=
2.03/arm-none-linux-gnueabi/libc/usr/local/lib/libworld.so</div><div>arm-20=
12.03/arm-none-linux-gnueabi/libc/usr/local/bin/hello</div><div>arm-2012.03=
/arm-none-linux-gnueabi/libc/etc/prelink.conf</div><div><br></div><div><br>=
</div><div><span style=3D"font-size:12.8000001907349px">&gt; What command d=
id you use to run the prelinker?=C2=A0 And does your sysroot contain</span>=
<br style=3D"font-size:12.8000001907349px"><span style=3D"font-size:12.8000=
001907349px">&gt; the /lib/ld-linux.so.3?</span><br></div><div><span style=
=3D"font-size:12.8000001907349px"><br></span></div><div>prelink command:</d=
iv><div><br></div><div>PATH=3D/usr/local/sbin prelink --verbose --root=3Dar=
m-2012.03/arm-none-linux-gnueabi/libc --cache-file=3D/etc/cache/prelink.cac=
he --config-file=3D/etc/prelink.conf --ld-library-path=3D&quot;/usr/local/l=
ib;/lib;/usr/lib;&quot; -h /usr/local/bin/hello</div><div><br></div><div><b=
r></div><div>error message:</div><div><br></div><div>prelink: /lib/<a href=
=3D"http://libdl-2.15.so">libdl-2.15.so</a> is not present in any config fi=
le directories, nor was specified on command line</div><div>prelink: /lib/<=
a href=3D"http://libc-2.15.so">libc-2.15.so</a> is not present in any confi=
g file directories, nor was specified on command line</div><div>prelink: /l=
ib/libgcc_s.so.1 is not present in any config file directories, nor was spe=
cified on command line</div><div>prelink: /lib/<a href=3D"http://ld-2.15.so=
">ld-2.15.so</a> is not present in any config file directories, nor was spe=
cified on command line</div><div>Laying out 1 libraries in virtual address =
space 41000000-50000000</div><div>Assigned virtual address space slots for =
libraries:</div><div>/usr/local/lib/libworld.so =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 41000000-410086d0</div><div>prelink: Could not prelink /u=
sr/lib/bin/localedef because its dependency /lib/libc.so.6 could not be pre=
linked</div><div>prelink: Could not prelink /usr/lib/bin/POSIX_V6_ILP32_OFF=
BIG because its dependency /lib/libc.so.6 could not be prelinked</div><div>=
prelink: Could not prelink /usr/lib/bin/zdump because its dependency /lib/l=
ibc.so.6 could not be prelinked</div><div>prelink: Could not prelink /usr/l=
ib/bin/POSIX_V7_ILP32_OFF32 because its dependency /lib/libc.so.6 could not=
 be prelinked</div><div>prelink: Could not prelink /usr/local/lib/libworld.=
so because its dependency /lib/libgcc_s.so.1 could not be prelinked</div><d=
iv>prelink: Could not prelink /usr/local/bin/hello because its dependency /=
usr/local/lib/libworld.so could not be prelinked</div><div>prelink: Could n=
ot prelink /usr/lib/bin/pldd because its dependency /lib/libc.so.6 could no=
t be prelinked</div><div>prelink: Could not prelink /usr/lib/bin/zic becaus=
e its dependency /lib/libc.so.6 could not be prelinked</div><div>prelink: C=
ould not prelink /usr/lib/bin/sprof because its dependency /lib/libdl.so.2 =
could not be prelinked</div><div>prelink: Could not prelink /usr/lib/bin/PO=
SIX_V6_ILP32_OFF32 because its dependency /lib/libc.so.6 could not be preli=
nked</div><div>prelink: Could not prelink /usr/lib/bin/gdbserver because it=
s dependency /lib/libdl.so.2 could not be prelinked</div><div>prelink: Coul=
d not prelink /usr/lib/bin/XBS5_ILP32_OFFBIG because its dependency /lib/li=
bc.so.6 could not be prelinked</div><div>prelink: Could not prelink /usr/li=
b/bin/XBS5_ILP32_OFF32 because its dependency /lib/libc.so.6 could not be p=
relinked</div><div>prelink: Could not prelink /usr/lib/bin/makedb because i=
ts dependency /lib/libc.so.6 could not be prelinked</div><div>prelink: Coul=
d not prelink /usr/lib/bin/pcprofiledump because its dependency /lib/libc.s=
o.6 could not be prelinked</div><div>prelink: Could not prelink /usr/lib/bi=
n/iconv because its dependency /lib/libc.so.6 could not be prelinked</div><=
div>prelink: Could not prelink /usr/lib/bin/locale because its dependency /=
lib/libc.so.6 could not be prelinked</div><div>prelink: Could not prelink /=
usr/lib/bin/gencat because its dependency /lib/libc.so.6 could not be preli=
nked</div><div>prelink: Could not prelink /usr/lib/bin/POSIX_V7_ILP32_OFFBI=
G because its dependency /lib/libc.so.6 could not be prelinked</div><div>pr=
elink: Could not prelink /usr/lib/bin/rpcgen because its dependency /lib/li=
bc.so.6 could not be prelinked</div><div>prelink: Could not prelink /usr/li=
b/bin/getent because its dependency /lib/libc.so.6 could not be prelinked</=
div><div>prelink: Could not prelink /usr/lib/bin/getconf because its depend=
ency /lib/libc.so.6 could not be prelinked</div><div>prelink: Could not pre=
link /usr/lib/bin/iconvconfig because its dependency /lib/libc.so.6 could n=
ot be prelinked</div><div><br></div><div><br></div><div>prelink.conf</div><=
div><br></div><div>-l /lib=C2=A0</div><div>-h /lib=C2=A0</div><div>-l /usr/=
lib</div><div>-h /usr/lib</div><div>-l /usr/local/lib</div><div>-h /usr/loc=
al/lib</div><div><br></div><div><br></div><div>Now there is no error messag=
e from rtld and libworld.so seems to be found. But what&#39;s the problem w=
ith the folling libraries?</div><div><br></div><div><a href=3D"http://libdl=
-2.15.so">libdl-2.15.so</a></div><div><a href=3D"http://libc-2.15.so">libc-=
2.15.so</a></div><div>libgcc_s.so.1</div><div><a href=3D"http://ld-2.15.so"=
>ld-2.15.so</a></div><div><br></div><div><br></div><div>I can see them in t=
his folder arm-2012.03/arm-none-linux-gnueabi/libc/lib:</div><div><br></div=
><div>-rwxr-xr-x 1 developer users =C2=A0177212 10. Jun 18:43 <a href=3D"ht=
tp://ld-2.15.so">ld-2.15.so</a></div><div>lrwxrwxrwx 1 developer users =C2=
=A0 =C2=A0 =C2=A010 10. Jun 18:43 ld-linux.so.3 -&gt; <a href=3D"http://ld-=
2.15.so">ld-2.15.so</a></div><div>-rwxr-xr-x 1 developer users 1777390 10. =
Jun 18:43 <a href=3D"http://libc-2.15.so">libc-2.15.so</a></div><div>lrwxrw=
xrwx 1 developer users =C2=A0 =C2=A0 =C2=A012 10. Jun 18:43 libc.so.6 -&gt;=
 <a href=3D"http://libc-2.15.so">libc-2.15.so</a></div><div>-rwxr-xr-x 1 de=
veloper users =C2=A0 26841 10. Jun 18:43 <a href=3D"http://libdl-2.15.so">l=
ibdl-2.15.so</a></div><div>lrwxrwxrwx 1 developer users =C2=A0 =C2=A0 =C2=
=A013 10. Jun 18:43 libdl.so.2 -&gt; <a href=3D"http://libdl-2.15.so">libdl=
-2.15.so</a></div><div>-rw-r--r-- 1 developer users =C2=A0 =C2=A0 135 10. J=
un 18:43 libgcc_s.so</div><div>-rw-r--r-- 1 developer users 3190583 10. Jun=
 18:43 libgcc_s.so.1</div><div>lrwxrwxrwx 1 developer users =C2=A0 =C2=A0 =
=C2=A013 10. Jun 18:43 libld-linux.so.3 -&gt; ld-linux.so.3</div><div><br><=
/div><div><br></div><div><br></div><div>I have also put the code on github =
for reference. Where is the mistake? - I think we are almost there :-)</div=
><div><a href=3D"https://github.com/fnbk/prelink-cross-example/tree/shared-=
library">https://github.com/fnbk/prelink-cross-example/tree/shared-library<=
/a></div><div><br></div><div><br></div><div>Greetings</div><div>Florian</di=
v><div><br></div><div><br></div><div><br></div></div>

--001a11c2ff1cece8ef0518aa7d3b--
