Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79FF7E00B58; Sat, 24 Oct 2015 11:54:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38721E00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 11:54:26 -0700 (PDT)
Received: by ioll68 with SMTP id l68so153547604iol.3
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 11:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-type;
	bh=N5fPPqXq1Ybn2VrbK84I5zib7USvSrZtzdT7wWKt+4c=;
	b=d5qwzoYAJ0A4PG/8JPt4dfsrzAKbFH3/XmUyxDtyUFokuaXgGieRcSb05wX1CtGn2E
	QVxWEaZaj6dchQ/We+ghGsl7Zh3+kSaZzswLV2eaF9UL5GeNybeBXMAb5a8LeFuyOfm0
	JVk+zh+VRGmnKYKnux7h9XBQVFRubNvRq+VtfdSL06vrFC2v7btyTRJ0WnqVu7UW1267
	G4o3+lNL/EMolVljnu9v1UKobYcgJ1SoarRQ5o+z0m8Wlr1NpsQvWoqD8AviyBzBCoH0
	bYQihrpQ/J5+KniVHgrHnI1suRHJUnxxqX3ruKtlpRyCDYTGt3aUONi9kMspjDNrISC4
	6RSA==
X-Received: by 10.107.40.201 with SMTP id o192mr27592480ioo.83.1445712866304; 
	Sat, 24 Oct 2015 11:54:26 -0700 (PDT)
MIME-Version: 1.0
References: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
	<BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>
	<365E1805BC95084CBE82381A0B86999401095F8E08@EU-MBX-01.mgc.mentorg.com>
	<365E1805BC95084CBE82381A0B86999401095F8E8A@EU-MBX-01.mgc.mentorg.com>
	<20151018095759.GA12999@bang.betafive.co.uk>
	<CABcZAN=TTO_ebMjr_5nsxM42MTewQQb6Nz-uH_9eLdHq002bvA@mail.gmail.com>
	<CABcZAN=9iN6bbjLLw7OtzuU7uogri+qS83auYnGRz_MT=ifjcQ@mail.gmail.com>
	<365E1805BC95084CBE82381A0B86999401095FAD92@EU-MBX-01.mgc.mentorg.com>
	<562BC58D.4090600@ni.com>
In-Reply-To: <562BC58D.4090600@ni.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Sat, 24 Oct 2015 18:54:16 +0000
Message-ID: <CABcZAN=8F6m+7Y4pBfumuoiEqsTRS7+Bpiug7yfOiNkBxU4emQ@mail.gmail.com>
To: Alejandro del Castillo <alejandro.delcastillo@ni.com>, "Ahsan,
	Noor" <Noor_Ahsan@mentor.com>, Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: opkg 0.3.0 or rootfs task
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
X-List-Received-Date: Sat, 24 Oct 2015 18:54:31 -0000
Content-Type: multipart/alternative; boundary=001a1141f410d7eabb0522de4136

--001a1141f410d7eabb0522de4136
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Not likely to help. The problem is the filename length, which will be the
same whether it's a file or a symlink.
On Sat, Oct 24, 2015 at 10:53 AM Alejandro del Castillo <
alejandro.delcastillo@ni.com> wrote:

>
>
> On 10/21/2015 02:49 AM, Ahsan, Noor wrote:
> > We are hitting this issue on another BSP
> >
> >
> file:_var_jenkins_workspace_ce-main_buildhost_SB64_buildtype_industrial_m=
achine_zedboard-zynq7-mel_build_zedboard-zynq7-mel_tmp_deploy_ipk_zedboard_=
zynq7_mel_kernel-module-lttng-ring-buffer-client-mmap-overwrite_2.6.2+git0+=
7a88f8b506-r0.0_zedboard_zynq7_mel.ipk
> >
> > need its solution quickly
>
> If you are in need of a quick workaround, try setting:
>
> option cache_local_files 0
>
> on opkg.conf. This will make a copy of your ipk's instead of creating
> symlinks (haven't try it myself, but that's my understanding).
>
> Also, please open a bug report for opkg on
> https://bugzilla.yoctoproject.org to track the issue.
>
> > *From:*kergoth@gmail.com [mailto:kergoth@gmail.com] *On Behalf Of
> > *Christopher Larson
> > *Sent:* Tuesday, October 20, 2015 10:20 PM
> > *To:* Paul Barker
> > *Cc:* Ahsan, Noor; yocto@yoctoproject.org
> > *Subject:* Re: [yocto] opkg 0.3.0 or rootfs task
> >
> > On Tue, Oct 20, 2015 at 10:14 AM, Christopher Larson
> > <clarson@kergoth.com <mailto:clarson@kergoth.com>> wrote:
> >
> >     On Sun, Oct 18, 2015 at 2:57 AM, Paul Barker <paul@paulbarker.me.uk
> >     <mailto:paul@paulbarker.me.uk>> wrote:
> >
> >         On Fri, Oct 16, 2015 at 07:38:19PM +0000, Ahsan, Noor wrote:
> >          > On Oct 16, 2015, at 5:47 AM, Ahsan, Noor
> >         <Noor_Ahsan@mentor.com
> >         <mailto:Noor_Ahsan@mentor.com><mailto:Noor_Ahsan@mentor.com
> >         <mailto:Noor_Ahsan@mentor.com>>> wrote:
> >          >
> >          > Hello,
> >          >
> >          > I noticed that at the time of rootfs creation symbolic links
> >         of the ipk files present in deploy/ipk. The problem what have i=
t
> >         while creation of symbolic link it take the full path till that
> >         ipk and remove slashes and convert them into underscores. Use
> >         that as the name of the symbolic link. This make a very long
> >         file names. If we have very long path then name of the symlink
> >         exceed from max filename limits. And we get following error
> >          >
> >          > Collected errors:
> >          > * file_link: unable to stat
> >
>  `/var/jenkins/workspace/mel_cedar-main/buildhost/amd-ubuntu14-32b/buildt=
ype/iot/machine/mel-dra7xx-evm/build_mel-dra7xx-evm/tmp/work/mel_dra7xx_evm=
-mel-linux-gnueabi/console-image/1.0-r0/rootfs//var/cache/opkg/volatile/fil=
e:_var_jenkins_workspace_mel_cedar-main_buildhost_amd-ubuntu14-32b_buildtyp=
e_iot_machine_mel-dra7xx-evm_build_mel-dra7xx-evm_tmp_deploy_ipk_mel_dra7xx=
_evm_kernel-module-lttng-ring-buffer-client-mmap-overwrite_2.6.2+git0+7a88f=
8b506-r0.0_mel_dra7xx_evm.ipk':
> >         File name too long.
> >          >
> >          > Can anyone tell me why the addition of full path was added t=
o
> >         the symlink name and can we remove it cause it is cause issues?
> >          >
> >          > what does
> >          >
> >          > getconf PATH_MAX /
> >          >
> >          > show ?
> >          >
> >          > jenkins@amd-ubu14-32-3:~$ getconf -a | grep  PATH_MAX
> >          > PATH_MAX                           4096
> >          > _POSIX_PATH_MAX                    4096
> >          >
> >          >
> >          > I think the issue is with file name not the path.
> >          >
> >          > Secondly the googling which I did reveals that symlink
> >         creation can't be stopped. I just wanna confirm that is my
> >         findings correct?
> >          >
> >
> >         This looks like something we overlooked in opkg. When we added
> >         the caching code
> >         we didn't think about how long the paths and filenames might ge=
t
> >         during the
> >         rootfs step. It's not currently possible to reduce the length o=
f
> >         the symlink
> >         filenames, but it is possible to change the directory in which
> >         the symlinks are
> >         created.
> >
> >         Currently the opkg cache dir can only be set in the opkg.conf
> >         file. I think we
> >         should add a '--cache-dir' argument to opkg. If this is added
> >         you'll be able to
> >         set the following in your local.conf file to change the cache
> >         location. Eg. to
> >         use '/tmp/opkg' on the host during rootfs creation.
> >
> >              OPKG_ARGS =3D "--cache-dir=3D/tmp/opkg"
> >
> >         I'll submit a patch to opkg to add this option.
> >
> >     This will only shorten the full path, not the filename length, so I
> >     doubt this'll solve it. That said, I can't actually successfully
> >     test this today, because cache_dir is made relative to offline_root=
,
> >     so setting such a path as you suggest doesn't shorten the full path
> >     either.
> >
> >
> > Also, did a touch of just the cache filename and it gives the same
> > filename length error, so where the cache dir is really isn't going to
> > matter, it's the filename including the full path to a deep BUILDDIR,
> > and therefore DEPLOY_DIR_IPK, which is the problem.
> > --
> >
> > Christopher Larson
> > clarson at kergoth dot com
> > Founder - BitBake, OpenEmbedded, OpenZaurus
> > Maintainer - Tslib
> > Senior Software Engineer, Mentor Graphics
> >
> >
> >
>

--001a1141f410d7eabb0522de4136
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Not likely to help. The problem is the filename length, which will be the s=
ame whether it&#39;s a file or a symlink.<br><div class=3D"gmail_quote"><di=
v dir=3D"ltr">On Sat, Oct 24, 2015 at 10:53 AM Alejandro del Castillo &lt;<=
a href=3D"mailto:alejandro.delcastillo@ni.com">alejandro.delcastillo@ni.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On 10/21/2015 02:49 AM, Ahsan, Noor wrote:<br>
&gt; We are hitting this issue on another BSP<br>
&gt;<br>
&gt; file:_var_jenkins_workspace_ce-main_buildhost_SB64_buildtype_industria=
l_machine_zedboard-zynq7-mel_build_zedboard-zynq7-mel_tmp_deploy_ipk_zedboa=
rd_zynq7_mel_kernel-module-lttng-ring-buffer-client-mmap-overwrite_2.6.2+gi=
t0+7a88f8b506-r0.0_zedboard_zynq7_mel.ipk<br>
&gt;<br>
&gt; need its solution quickly<br>
<br>
If you are in need of a quick workaround, try setting:<br>
<br>
option cache_local_files 0<br>
<br>
on opkg.conf. This will make a copy of your ipk&#39;s instead of creating<b=
r>
symlinks (haven&#39;t try it myself, but that&#39;s my understanding).<br>
<br>
Also, please open a bug report for opkg on<br>
<a href=3D"https://bugzilla.yoctoproject.org" rel=3D"noreferrer" target=3D"=
_blank">https://bugzilla.yoctoproject.org</a> to track the issue.<br>
<br>
&gt; *From:*<a href=3D"mailto:kergoth@gmail.com" target=3D"_blank">kergoth@=
gmail.com</a> [mailto:<a href=3D"mailto:kergoth@gmail.com" target=3D"_blank=
">kergoth@gmail.com</a>] *On Behalf Of<br>
&gt; *Christopher Larson<br>
&gt; *Sent:* Tuesday, October 20, 2015 10:20 PM<br>
&gt; *To:* Paul Barker<br>
&gt; *Cc:* Ahsan, Noor; <a href=3D"mailto:yocto@yoctoproject.org" target=3D=
"_blank">yocto@yoctoproject.org</a><br>
&gt; *Subject:* Re: [yocto] opkg 0.3.0 or rootfs task<br>
&gt;<br>
&gt; On Tue, Oct 20, 2015 at 10:14 AM, Christopher Larson<br>
&gt; &lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@k=
ergoth.com</a> &lt;mailto:<a href=3D"mailto:clarson@kergoth.com" target=3D"=
_blank">clarson@kergoth.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On Sun, Oct 18, 2015 at 2:57 AM, Paul Barker &lt;<a=
 href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me=
.uk</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:paul@paulbarker.me.uk"=
 target=3D"_blank">paul@paulbarker.me.uk</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Fri, Oct 16, 2015 at 07:38:19PM +0=
000, Ahsan, Noor wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; On Oct 16, 2015, at 5:47 AM, Ah=
san, Noor<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:Noor_Ahsan@ment=
or.com" target=3D"_blank">Noor_Ahsan@mentor.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:Noor_Ahs=
an@mentor.com" target=3D"_blank">Noor_Ahsan@mentor.com</a>&gt;&lt;mailto:<a=
 href=3D"mailto:Noor_Ahsan@mentor.com" target=3D"_blank">Noor_Ahsan@mentor.=
com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:Noor_Ahs=
an@mentor.com" target=3D"_blank">Noor_Ahsan@mentor.com</a>&gt;&gt;&gt; wrot=
e:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Hello,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; I noticed that at the time of r=
ootfs creation symbolic links<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0of the ipk files present in deploy/ip=
k. The problem what have it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while creation of symbolic link it ta=
ke the full path till that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ipk and remove slashes and convert th=
em into underscores. Use<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0that as the name of the symbolic link=
. This make a very long<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file names. If we have very long path=
 then name of the symlink<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0exceed from max filename limits. And =
we get following error<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Collected errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; * file_link: unable to stat<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0`/var/jenkins/workspace/mel_cedar-mai=
n/buildhost/amd-ubuntu14-32b/buildtype/iot/machine/mel-dra7xx-evm/build_mel=
-dra7xx-evm/tmp/work/mel_dra7xx_evm-mel-linux-gnueabi/console-image/1.0-r0/=
rootfs//var/cache/opkg/volatile/file:_var_jenkins_workspace_mel_cedar-main_=
buildhost_amd-ubuntu14-32b_buildtype_iot_machine_mel-dra7xx-evm_build_mel-d=
ra7xx-evm_tmp_deploy_ipk_mel_dra7xx_evm_kernel-module-lttng-ring-buffer-cli=
ent-mmap-overwrite_2.6.2+git0+7a88f8b506-r0.0_mel_dra7xx_evm.ipk&#39;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0File name too long.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Can anyone tell me why the addi=
tion of full path was added to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the symlink name and can we remove it=
 cause it is cause issues?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; what does<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; getconf PATH_MAX /<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; show ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; jenkins@amd-ubu14-32-3:~$ getco=
nf -a | grep=C2=A0 PATH_MAX<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; PATH_MAX=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A04096<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; _POSIX_PATH_MAX=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; I think the issue is with file =
name not the path.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Secondly the googling which I d=
id reveals that symlink<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0creation can&#39;t be stopped. I just=
 wanna confirm that is my<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0findings correct?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This looks like something we overlook=
ed in opkg. When we added<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the caching code<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0we didn&#39;t think about how long th=
e paths and filenames might get<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0during the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rootfs step. It&#39;s not currently p=
ossible to reduce the length of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the symlink<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0filenames, but it is possible to chan=
ge the directory in which<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the symlinks are<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0created.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Currently the opkg cache dir can only=
 be set in the opkg.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file. I think we<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0should add a &#39;--cache-dir&#39; ar=
gument to opkg. If this is added<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0you&#39;ll be able to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0set the following in your local.conf =
file to change the cache<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0location. Eg. to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0use &#39;/tmp/opkg&#39; on the host d=
uring rootfs creation.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 OPKG_ARGS =3D &quot;--=
cache-dir=3D/tmp/opkg&quot;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I&#39;ll submit a patch to opkg to ad=
d this option.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0This will only shorten the full path, not the filen=
ame length, so I<br>
&gt;=C2=A0 =C2=A0 =C2=A0doubt this&#39;ll solve it. That said, I can&#39;t =
actually successfully<br>
&gt;=C2=A0 =C2=A0 =C2=A0test this today, because cache_dir is made relative=
 to offline_root,<br>
&gt;=C2=A0 =C2=A0 =C2=A0so setting such a path as you suggest doesn&#39;t s=
horten the full path<br>
&gt;=C2=A0 =C2=A0 =C2=A0either.<br>
&gt;<br>
&gt;<br>
&gt; Also, did a touch of just the cache filename and it gives the same<br>
&gt; filename length error, so where the cache dir is really isn&#39;t goin=
g to<br>
&gt; matter, it&#39;s the filename including the full path to a deep BUILDD=
IR,<br>
&gt; and therefore DEPLOY_DIR_IPK, which is the problem.<br>
&gt; --<br>
&gt;<br>
&gt; Christopher Larson<br>
&gt; clarson at kergoth dot com<br>
&gt; Founder - BitBake, OpenEmbedded, OpenZaurus<br>
&gt; Maintainer - Tslib<br>
&gt; Senior Software Engineer, Mentor Graphics<br>
&gt;<br>
&gt;<br>
&gt;<br>
</blockquote></div>

--001a1141f410d7eabb0522de4136--
