Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E9BBE014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 02:51:03 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id hj19so3988163wib.9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 02:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=CEYGQlRmiqvswR+QHceJzphpevt+YjABMwrWl5GFWFg=;
	b=0neHggOYnqCXyIdNEA864TNpcTETighz3nds46bJ4sIl4YzpRhkuJUAzeDH3m769RE
	6iqNjWTV8kqxmJbA8Pry8fsH73xBr6NyNRL1P1othPbDp/jgSgcHUjQNjefkUAFmCK6s
	W69DzjYiUxinZlBpC+kC9SUqoR4XgyOdC/prjl7wYQQqJtkmv/vuoIga5ND5LCvtVjyB
	BKENMmo37AVelCrpBnHgj5qX0q63YCvybrBTkTQXMjACAokJHJIiviFsELlVRRLo3yQi
	3bK/saf0zbFH2iQOquioAM1MJvLBf0le/40pQH/VwGe/dfnB+1Ddv0VW67n7k+33QiC1
	Ps3A==
X-Received: by 10.180.85.103 with SMTP id g7mr64552901wiz.23.1366624259013;
	Mon, 22 Apr 2013 02:50:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.40.163 with HTTP; Mon, 22 Apr 2013 02:50:38 -0700 (PDT)
In-Reply-To: <CAJTo0LbiaSH8HZmPM5PebFU8FRiDJtFDaCUQihQqoOv1UXXd7w@mail.gmail.com>
References: <CAAGt+t3dy7C1-gGdypOY4heYF8angEx1S9HZaFCW+WgkfNnnZA@mail.gmail.com>
	<CAJTo0LbiaSH8HZmPM5PebFU8FRiDJtFDaCUQihQqoOv1UXXd7w@mail.gmail.com>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Mon, 22 Apr 2013 11:50:38 +0200
Message-ID: <CAAGt+t1OF4oD7P7WwtT0XH6ZWJfvXe19vzLv3cuUfrRcj9eJ3Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Error: runqemu: command not found
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
X-List-Received-Date: Mon, 22 Apr 2013 09:51:03 -0000
Content-Type: multipart/alternative; boundary=f46d043bdce680087d04daf00131

--f46d043bdce680087d04daf00131
Content-Type: text/plain; charset=ISO-8859-1

after running oe-init-build-env, the build was successful and i can boot
the linux OS. :)

Thanks a Lot. Love you all.


On Mon, Apr 22, 2013 at 11:29 AM, Burton, Ross <ross.burton@intel.com>wrote:

> On 22 April 2013 10:25, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> > I downloaded poky-danny-8.0, after editing conf file, i made a
> build(bitbake
> > core-image-minimal), after the build completed. When I try to boot the
> image
> > it throws  runqemu: command not found. Any Ideas?
>
> That script is in poky/scripts, so you are probably running in a
> terminal where you didn't run oe-init-build-env.
>
> Ross
>



-- 
Regards,
Zafrullah Syed

--f46d043bdce680087d04daf00131
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">after running oe-init-build-env, the build was=A0successfu=
l and i can boot the linux OS. :)<div><br></div><div style>Thanks a Lot. Lo=
ve you all.</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gma=
il_quote">

On Mon, Apr 22, 2013 at 11:29 AM, Burton, Ross <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div class=3D"im">On 22 April 2013 10:25, Zafrullah Syed &lt;<a href=3D"mai=
lto:zafrullahmehdi@gmail.com">zafrullahmehdi@gmail.com</a>&gt; wrote:<br>
&gt; I downloaded poky-danny-8.0, after editing conf file, i made a build(b=
itbake<br>
&gt; core-image-minimal), after the build completed. When I try to boot the=
 image<br>
&gt; it throws =A0runqemu: command not found. Any Ideas?<br>
<br>
</div>That script is in poky/scripts, so you are probably running in a<br>
terminal where you didn&#39;t run oe-init-build-env.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><span style=3D"font-family:arial,sans-serif;font-size:13px;border-collaps=
e:collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><f=
ont color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-coll=
apse:collapse"><br>

</span></font></div>
</div>

--f46d043bdce680087d04daf00131--
