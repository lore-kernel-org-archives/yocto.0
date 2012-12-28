Return-Path: <gopikrishnans@pec.edu>
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E729DE002AB
	for <yocto@yoctoproject.org>; Thu, 27 Dec 2012 22:30:35 -0800 (PST)
Received: by mail-la0-f54.google.com with SMTP id fp12so345688lab.41
	for <yocto@yoctoproject.org>; Thu, 27 Dec 2012 22:30:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=BMAEPOJcuPD2llSGwVAwMECv2CehTFpVVhzgxtZr6a8=;
	b=KNwn/CuTH7T+hwsAVVfPYKfshnldQs4GmWqErcr0nmP6AoNBxkJytDbkqKk9mybT/E
	4zEJG7m6oDsSUsEtR8+4Y8HuaBuUp1a7zzo7GiNq0q3Oz7RP8RcZbKqAulGw6Y7PxEMM
	4Ht6HSIQw0qBc9BHNNqcka3LTGo1kpawLJWT87FGPlNHO2+MAlcJtKGclAhy4wxvdeKA
	1m+UY/92SbRTMLRKcz4FiGqHzmnXVL+/fSsxKzb3Yv+Q9KLFJbVLfTmAoFR8uk7dkfCh
	U/vt+R/1gGaSooZGUciK13kYC+8+dlV7ZTmCiQj4If4IWMxMUzSqKTyfht1BVhxWNvW3
	obOA==
MIME-Version: 1.0
Received: by 10.112.16.69 with SMTP id e5mr13145579lbd.43.1356676233816; Thu,
	27 Dec 2012 22:30:33 -0800 (PST)
Received: by 10.112.21.193 with HTTP; Thu, 27 Dec 2012 22:30:33 -0800 (PST)
In-Reply-To: <CAOkC3RZmx1ph=LKk2n9_oFAD=PjfbG6KCscQheAcRUigOuXiKA@mail.gmail.com>
References: <CAOkC3RaLxgZVNQOB_-o-HKJ=CiS_J8whpAF6gZzk+pYuhoCz=w@mail.gmail.com>
	<20121221182320.0698db75@eb-e6520>
	<CAOkC3RZmx1ph=LKk2n9_oFAD=PjfbG6KCscQheAcRUigOuXiKA@mail.gmail.com>
Date: Fri, 28 Dec 2012 12:00:33 +0530
Message-ID: <CAOkC3RYPbP=rH-zr9J-vVzWUp9baEzWe=MX7m-+FOjVWhXsg+g@mail.gmail.com>
From: GOPIKRISHNAN S <gopikrishnans@pec.edu>
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
X-Gm-Message-State: ALoCoQmXPXuEJnSoO2OY6+GmbkjTcun9kBD05qNXsDt3A2hRJ8LRcV8ZBQk6IIq0iYBQMoaNO5Z8
Cc: meta-freescale@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [meta-freescale] hiawatha-8.6 using Yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Dec 2012 06:30:36 -0000
Content-Type: multipart/alternative; boundary=f46d0401fb41fde99304d1e3cc3f

--f46d0401fb41fde99304d1e3cc3f
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I am getting some errors while building hiawatha(using recipe from
openembedded). In investigation I found all return \type and parameter type
seems to be same & in all /usr/include/*.h files in declared as extern was
added before to make it visible in global. I wonder no problem was
not raised while compiling for my host platform (Debian 6 on x86), and
getting problem only doing it for my freescale board

/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/wor=
k/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:39:5:
error: conflictin
g types for 'unsetenv'
/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sys=
roots/p2041rdb/usr/include/stdlib.h:589:12:
note: previous declaration of 'unsetenv' was her
e
/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/wor=
k/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:49:6:
error: conflictin
g types for 'clearenv'
/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sys=
roots/p2041rdb/usr/include/stdlib.h:596:12:
note: previous declaration of 'clearenv' was her
e
/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/wor=
k/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:39:5:
error: conflictin
g types for 'unsetenv'
/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sys=
roots/p2041rdb/usr/include/stdlib.h:589:12:
note: previous declaration of 'unsetenv' was her
e
/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/wor=
k/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:
In function 'strcasecm
p':/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/=
work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:49:=
6:
error: conflic
ting types for 'clearenv'
/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sys=
roots/p2041rdb/usr/include/stdlib.h:596:12:
note: previous declaration of 'clearenv' was her
e


On Thu, Dec 27, 2012 at 9:25 PM, GOPIKRISHNAN S <gopikrishnans@pec.edu>wrot=
e:

> Thanks. Your link was so helpful.
>
>
> On Fri, Dec 21, 2012 at 10:53 PM, Eric B=E9nard <eric@eukrea.com> wrote:
>
>> Hi,
>>
>> Le Fri, 21 Dec 2012 21:41:38 +0530,
>> GOPIKRISHNAN S <gopikrishnans@pec.edu> a =E9crit :
>> > I was trying to install hiawatha on my freescale p2041rdb. But it is
>> using
>> > cmake to configure and install.
>> > How to write recipe for this with cmake. I have writted recipe for
>> packages
>> > with autotools, and make file.
>> > Any Idea???
>>
>> by using meta-openembedded/meta-webserver you can get hiawatha running
>> in a few minutes :
>>
>> http://cgit.openembedded.org/meta-openembedded/tree/meta-webserver/recip=
es-httpd/hiawatha
>>
>> Best regards
>> Eric
>>
>
>

--f46d0401fb41fde99304d1e3cc3f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I am getting some errors while building hiawatha(using=A0recipe=A0from open=
embedded). In investigation I found all return \type and parameter type see=
ms to be same &amp; in all /usr/include/*.h files in declared as extern was=
 added before to make it visible in global. I wonder no problem was not=A0r=
aised=A0while compiling for my host platform (Debian 6 on x86), and getting=
 problem only doing it for my freescale board<div>
<br></div><div><div>/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p204=
1rdb_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/=
alternative.c:39:5: error: conflictin</div><div>g types for &#39;unsetenv&#=
39;</div>
<div>/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tm=
p/sysroots/p2041rdb/usr/include/stdlib.h:589:12: note: previous declaration=
 of &#39;unsetenv&#39; was her</div><div>e</div><div>/media/sdk/3.1/QorIQ-S=
DK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/=
hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:49:6: error: conflictin</div=
>
<div>g types for &#39;clearenv&#39;</div><div>/media/sdk/3.1/QorIQ-SDK-V1.3=
-20121114-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/include/st=
dlib.h:596:12: note: previous declaration of &#39;clearenv&#39; was her</di=
v>
<div>e</div><div>/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rd=
b_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alt=
ernative.c:39:5: error: conflictin</div><div>g types for &#39;unsetenv&#39;=
</div>
<div>/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tm=
p/sysroots/p2041rdb/usr/include/stdlib.h:589:12: note: previous declaration=
 of &#39;unsetenv&#39; was her</div><div>e</div><div>/media/sdk/3.1/QorIQ-S=
DK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/=
hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c: In function &#39;strcasecm<=
/div>
<div>p&#39;:/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_rel=
ease/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternat=
ive.c:49:6: error: conflic</div><div>ting types for &#39;clearenv&#39;</div=
>
<div>/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tm=
p/sysroots/p2041rdb/usr/include/stdlib.h:596:12: note: previous declaration=
 of &#39;clearenv&#39; was her</div><div>e</div><div><br></div><br><div cla=
ss=3D"gmail_quote">
On Thu, Dec 27, 2012 at 9:25 PM, GOPIKRISHNAN S <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:gopikrishnans@pec.edu" target=3D"_blank">gopikrishnans@pec.edu=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Thanks. Your link was so helpful.<div class=3D"HOEnZb"><div class=3D"h5"><b=
r><br><div class=3D"gmail_quote">On Fri, Dec 21, 2012 at 10:53 PM, Eric B=
=E9nard <span dir=3D"ltr">&lt;<a href=3D"mailto:eric@eukrea.com" target=3D"=
_blank">eric@eukrea.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
Le Fri, 21 Dec 2012 21:41:38 +0530,<br>
GOPIKRISHNAN S &lt;<a href=3D"mailto:gopikrishnans@pec.edu" target=3D"_blan=
k">gopikrishnans@pec.edu</a>&gt; a =E9crit :<br>
<div><div>&gt; I was trying to install hiawatha on my freescale p2041rdb. B=
ut it is using<br>
&gt; cmake to configure and install.<br>
&gt; How to write recipe for this with cmake. I have writted recipe for pac=
kages<br>
&gt; with autotools, and make file.<br>
&gt; Any Idea???<br>
<br>
</div></div>by using meta-openembedded/meta-webserver you can get hiawatha =
running<br>
in a few minutes :<br>
<a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-webserv=
er/recipes-httpd/hiawatha" target=3D"_blank">http://cgit.openembedded.org/m=
eta-openembedded/tree/meta-webserver/recipes-httpd/hiawatha</a><br>
<br>
Best regards<br>
<span><font color=3D"#888888">Eric<br>
</font></span></blockquote></div><br>
</div></div></blockquote></div><br></div>

--f46d0401fb41fde99304d1e3cc3f--
