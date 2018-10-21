Return-Path: <flowers.joseph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92149E00826; Sun, 21 Oct 2018 09:32:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99A66E003DB
	for <yocto@yoctoproject.org>; Sun, 21 Oct 2018 09:32:39 -0700 (PDT)
Received: by mail-it1-f175.google.com with SMTP id i76-v6so9740150ita.3
	for <yocto@yoctoproject.org>; Sun, 21 Oct 2018 09:32:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=za4LKrXwHsWzP89/IXzabR0bA37XfDBeaawafwlSBuk=;
	b=s3U+d3Y2/Z/sxmkzHjrsYM1xbSBRvbx/i54lQWHkt8Ov8SHC8mq/hv1Chwa1KZa5bx
	Olr1rWpXFFsM8miUqYH6eYIANH2zTQdTn+xsQmNTelGdRaBbUC1XzuKE/ZUedVkaEmpa
	ITZqUsX3Lr4WFleIp3xqXb36fP0xKTI+7YWGNu8N2G2Uj+oAp/Oxy4Ge0DrXvnLEaI2T
	1yBoqyw/mD40Yl4LAqy4rqiqR3AbNVjMGvYp4Qm2vglv92kmxo9kTu0y7PRUbi41rQNy
	hwPEQ++xIKw9GDeuMFpkcl3Zdz+10TtGg00UciQR8xlUQP0MA659Nea2dpV5qBtyrVh7
	Jr3Q==
X-Gm-Message-State: ABuFfojsc80axlNZjt9VZ5fmhaaaWUHd2mccxFDvY8lE/g0f7YSP0Mpp
	9Que9ton8AUeBQKPxLDm14CZ24KZ1HLZzekmAQ==
X-Google-Smtp-Source: ACcGV606TK/WVmIIqAx5xZUcepjITLIvySgGrcHpxgx5K1QBn0VpjZe0m6MC2a7ephyUAweke4JxmKI1Qrb0k8KFd2o=
X-Received: by 2002:a02:8986:: with SMTP id
	p6-v6mr31793449jaj.139.1540139558837; 
	Sun, 21 Oct 2018 09:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=ZEM9oFXNUTU8EKb_e2rCzpqZLw6Yc7dQV4mVMH2TbzRiaw@mail.gmail.com>
	<2DE4399C-7659-49BD-AF9E-259315E5D1DD@gmail.com>
	<CA+4=ZENx5DtdAUMH5Paia2Sv395=yrHH+t+puHeb9jwCi2w+kw@mail.gmail.com>
	<CAJTo0LaQJL_b-m8BLun+5HLnb_6vMe+XFySjLswOQ+UxGtK9=w@mail.gmail.com>
In-Reply-To: <CAJTo0LaQJL_b-m8BLun+5HLnb_6vMe+XFySjLswOQ+UxGtK9=w@mail.gmail.com>
From: Joe Flowers <joe.flowers@nofreewill.com>
Date: Sun, 21 Oct 2018 12:32:26 -0400
Message-ID: <CA+4=ZEMQPbxZ4_S8d5_PXx5y6TdhAMt_NP945W-6AjEp4UFGyg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: SUSE SLES target OS
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
X-List-Received-Date: Sun, 21 Oct 2018 16:32:40 -0000
Content-Type: multipart/alternative; boundary="0000000000004f27ac0578bfaf90"

--0000000000004f27ac0578bfaf90
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you. All of this is very helpful.

On Sun, Oct 21, 2018, 12:24 PM Burton, Ross <ross.burton@intel.com> wrote:

> If you want to rebuild Suse then the recommended tool is OBS, as
> that's what is used to build Suse.
>
> Obviously, building your own SLES isn't SLES, just something that
> looks like SLES (says a Centos just looks like, but isn't, RHEL).
>
> Ross
> On Fri, 19 Oct 2018 at 22:43, Joe Flowers <joe.flowers@nofreewill.com>
> wrote:
> >
> > Yes, unfortunately, I mean SLES.
> >
> > Your answer implies that to create a minimal SLES build I will have to
> abandon Yocto and look for another build (or reduction) solution as I kno=
w
> this has been done by non-SUSE entities.
> >
> >
> > On Fri, Oct 19, 2018 at 5:33 PM Ismael Mart=C3=ADnez Dibene <
> imdibene@gmail.com> wrote:
> >>
> >> Do you mean OpenSuse? Since SLES is only build/provide to you by SUSE
> directly, it would be the same as trying to build your own RHEL instead o=
f
> fedora. That would be difficult without theirs repositories ;-)
> >>
> >> Saludos / Regards / Mit Freundlichen gr=C3=BC=C3=9Fen / Atenciosamente
> >> Ismael Mart=C3=ADnez Dibene
> >>
> >> > Am 19.10.2018 um 16:17 schrieb Joe Flowers <
> joe.flowers@nofreewill.com>:
> >> >
> >> > Hello everyone,
> >> >
> >> > I need to get started on a Yocto set that will build a minimal core
> for a target OS of SUSE Linux Enterprise Server on x64 target hardware li=
ke
> a MinnowBoard.
> >> >
> >> > I have scoured the web, SUSE, and this list's (Yocto Project)
> archives, but have run into no pointers.  My guess is that it is right
> under my nose that can be seen with more experience rather than being
> hidden behind private walls.
> >> >
> >> > Will someone please get me started on the pointers and downloads I
> need to get started?
> >> >
> >> > I have already run through a tutorial on creating a core OS using
> Yocto for a WandBoard target hardware.
> >> >
> >> >
> >> > Thank you !
> >> >
> >> > Joe
> >> > --------------
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000004f27ac0578bfaf90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you. All of this is very helpful.</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr">On Sun, Oct 21, 2018, 12:24 PM Burton, =
Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">If you want to rebuild =
Suse then the recommended tool is OBS, as<br>
that&#39;s what is used to build Suse.<br>
<br>
Obviously, building your own SLES isn&#39;t SLES, just something that<br>
looks like SLES (says a Centos just looks like, but isn&#39;t, RHEL).<br>
<br>
Ross<br>
On Fri, 19 Oct 2018 at 22:43, Joe Flowers &lt;<a href=3D"mailto:joe.flowers=
@nofreewill.com" target=3D"_blank" rel=3D"noreferrer">joe.flowers@nofreewil=
l.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Yes, unfortunately, I mean SLES.<br>
&gt;<br>
&gt; Your answer implies that to create a minimal SLES build I will have to=
 abandon Yocto and look for another build (or reduction) solution as I know=
 this has been done by non-SUSE entities.<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Oct 19, 2018 at 5:33 PM Ismael Mart=C3=ADnez Dibene &lt;<a hre=
f=3D"mailto:imdibene@gmail.com" target=3D"_blank" rel=3D"noreferrer">imdibe=
ne@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Do you mean OpenSuse? Since SLES is only build/provide to you by S=
USE directly, it would be the same as trying to build your own RHEL instead=
 of fedora. That would be difficult without theirs repositories ;-)<br>
&gt;&gt;<br>
&gt;&gt; Saludos / Regards / Mit Freundlichen gr=C3=BC=C3=9Fen / Atenciosam=
ente<br>
&gt;&gt; Ismael Mart=C3=ADnez Dibene<br>
&gt;&gt;<br>
&gt;&gt; &gt; Am 19.10.2018 um 16:17 schrieb Joe Flowers &lt;<a href=3D"mai=
lto:joe.flowers@nofreewill.com" target=3D"_blank" rel=3D"noreferrer">joe.fl=
owers@nofreewill.com</a>&gt;:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hello everyone,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I need to get started on a Yocto set that will build a minima=
l core for a target OS of SUSE Linux Enterprise Server on x64 target hardwa=
re like a MinnowBoard.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have scoured the web, SUSE, and this list&#39;s (Yocto Proj=
ect) archives, but have run into no pointers.=C2=A0 My guess is that it is =
right under my nose that can be seen with more experience rather than being=
 hidden behind private walls.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Will someone please get me started on the pointers and downlo=
ads I need to get started?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have already run through a tutorial on creating a core OS u=
sing Yocto for a WandBoard target hardware.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thank you !<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Joe<br>
&gt;&gt; &gt; --------------<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" r=
el=3D"noreferrer">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/listinfo/yocto</a><br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nor=
eferrer">yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo=
/yocto</a><br>
</blockquote></div>

--0000000000004f27ac0578bfaf90--
