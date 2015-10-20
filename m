Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 240D5E00843; Tue, 20 Oct 2015 10:19:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36E41E006D5
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 10:19:55 -0700 (PDT)
Received: by igbdj2 with SMTP id dj2so19414004igb.1
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 10:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=w2hb7CPRtTO3pdQHwwnkUgLRdyJsBXsAjoIzzjVs43s=;
	b=z2SHMMMnhoCGzFKzHLN7A7dXUFkM7x7GbDxG3Rv4bmQqsty2Lr6RHX4kMDXe7pjrDz
	285/Bf13t0RBxgbjelSGdJMhwowTVZwy2GRv0rpNc52lPQlYv4KEmULjREjE1xFbo2RR
	h8EZzEtVIdErAe5kDY+k+UyfXs2Ct9SVa0pH1SUpB+P0lIQqb8YrTDYAZ1+0TVwmQGbw
	ikOlTk/zsx/hVaig5WZ75uudiT1nmuAWjgx6vRtG3CmoVKecF78X7RlviaV3G2JWtdzi
	ZG0OJYf0+Tl4sKDpnMjTtRUM/2gP85vP45gBYQDOnBOQQYjST1U+1BjHxAD002IvfFEh
	UdDQ==
X-Received: by 10.50.43.170 with SMTP id x10mr25230932igl.68.1445361594788;
	Tue, 20 Oct 2015 10:19:54 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.65.204 with HTTP; Tue, 20 Oct 2015 10:19:35 -0700 (PDT)
In-Reply-To: <CABcZAN=TTO_ebMjr_5nsxM42MTewQQb6Nz-uH_9eLdHq002bvA@mail.gmail.com>
References: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
	<BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>
	<365E1805BC95084CBE82381A0B86999401095F8E08@EU-MBX-01.mgc.mentorg.com>
	<365E1805BC95084CBE82381A0B86999401095F8E8A@EU-MBX-01.mgc.mentorg.com>
	<20151018095759.GA12999@bang.betafive.co.uk>
	<CABcZAN=TTO_ebMjr_5nsxM42MTewQQb6Nz-uH_9eLdHq002bvA@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 20 Oct 2015 10:19:35 -0700
X-Google-Sender-Auth: olHSKdtrziDpgagC3jLaL3kI2Kw
Message-ID: <CABcZAN=9iN6bbjLLw7OtzuU7uogri+qS83auYnGRz_MT=ifjcQ@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
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
X-List-Received-Date: Tue, 20 Oct 2015 17:19:59 -0000
Content-Type: multipart/alternative; boundary=089e01176cad6e094c05228c7887

--089e01176cad6e094c05228c7887
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 20, 2015 at 10:14 AM, Christopher Larson <clarson@kergoth.com>
wrote:

>
> On Sun, Oct 18, 2015 at 2:57 AM, Paul Barker <paul@paulbarker.me.uk>
> wrote:
>
>> On Fri, Oct 16, 2015 at 07:38:19PM +0000, Ahsan, Noor wrote:
>> > On Oct 16, 2015, at 5:47 AM, Ahsan, Noor <Noor_Ahsan@mentor.com<mailto=
:
>> Noor_Ahsan@mentor.com>> wrote:
>> >
>> > Hello,
>> >
>> > I noticed that at the time of rootfs creation symbolic links of the ip=
k
>> files present in deploy/ipk. The problem what have it while creation of
>> symbolic link it take the full path till that ipk and remove slashes and
>> convert them into underscores. Use that as the name of the symbolic link=
.
>> This make a very long file names. If we have very long path then name of
>> the symlink exceed from max filename limits. And we get following error
>> >
>> > Collected errors:
>> > * file_link: unable to stat
>> `/var/jenkins/workspace/mel_cedar-main/buildhost/amd-ubuntu14-32b/buildt=
ype/iot/machine/mel-dra7xx-evm/build_mel-dra7xx-evm/tmp/work/mel_dra7xx_evm=
-mel-linux-gnueabi/console-image/1.0-r0/rootfs//var/cache/
>> opkg/volatile/file:_var_jenkins_workspace_mel_cedar-main_buildhost_amd-u=
buntu14-32b_buildtype_iot_machine_mel-dra7xx-evm_build_mel-dra7xx-evm_tmp_d=
eploy_ipk_mel_dra7xx_evm_kernel-module-lttng-ring-buffer-client-mmap-overwr=
ite_2.6.2+git0+7a88f8b506-r0.0_mel_dra7xx_evm.ipk':
>> File name too long.
>> >
>> > Can anyone tell me why the addition of full path was added to the
>> symlink name and can we remove it cause it is cause issues?
>> >
>> > what does
>> >
>> > getconf PATH_MAX /
>> >
>> > show ?
>> >
>> > jenkins@amd-ubu14-32-3:~$ getconf -a | grep  PATH_MAX
>> > PATH_MAX                           4096
>> > _POSIX_PATH_MAX                    4096
>> >
>> >
>> > I think the issue is with file name not the path.
>> >
>> > Secondly the googling which I did reveals that symlink creation can't
>> be stopped. I just wanna confirm that is my findings correct?
>> >
>>
>> This looks like something we overlooked in opkg. When we added the
>> caching code
>> we didn't think about how long the paths and filenames might get during
>> the
>> rootfs step. It's not currently possible to reduce the length of the
>> symlink
>> filenames, but it is possible to change the directory in which the
>> symlinks are
>> created.
>>
>> Currently the opkg cache dir can only be set in the opkg.conf file. I
>> think we
>> should add a '--cache-dir' argument to opkg. If this is added you'll be
>> able to
>> set the following in your local.conf file to change the cache location.
>> Eg. to
>> use '/tmp/opkg' on the host during rootfs creation.
>>
>>     OPKG_ARGS =3D "--cache-dir=3D/tmp/opkg"
>>
>> I'll submit a patch to opkg to add this option.
>>
>
> This will only shorten the full path, not the filename length, so I doubt
> this'll solve it. That said, I can't actually successfully test this toda=
y,
> because cache_dir is made relative to offline_root, so setting such a pat=
h
> as you suggest doesn't shorten the full path either.


Also, did a touch of just the cache filename and it gives the same filename
length error, so where the cache dir is really isn't going to matter, it's
the filename including the full path to a deep BUILDDIR, and therefore
DEPLOY_DIR_IPK, which is the problem.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e01176cad6e094c05228c7887
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Oct 20, 2015 at 10:14 AM, Christopher Larson <span dir=3D"ltr">&lt;=
<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex"><div class=3D""><div class=3D"h=
5"><br><div class=3D"gmail_quote">On Sun, Oct 18, 2015 at 2:57 AM, Paul Bar=
ker <span dir=3D"ltr">&lt;<a href=3D"mailto:paul@paulbarker.me.uk" target=
=3D"_blank">paul@paulbarker.me.uk</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;b=
order-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"=
><div style=3D"overflow:hidden">On Fri, Oct 16, 2015 at 07:38:19PM +0000, A=
hsan, Noor wrote:<br>
<span>&gt; On Oct 16, 2015, at 5:47 AM, Ahsan, Noor &lt;<a href=3D"mailto:N=
oor_Ahsan@mentor.com" target=3D"_blank">Noor_Ahsan@mentor.com</a>&lt;mailto=
:<a href=3D"mailto:Noor_Ahsan@mentor.com" target=3D"_blank">Noor_Ahsan@ment=
or.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I noticed that at the time of rootfs creation symbolic links of the ip=
k files present in deploy/ipk. The problem what have it while creation of s=
ymbolic link it take the full path till that ipk and remove slashes and con=
vert them into underscores. Use that as the name of the symbolic link. This=
 make a very long file names. If we have very long path then name of the sy=
mlink exceed from max filename limits. And we get following error<br>
&gt;<br>
&gt; Collected errors:<br>
&gt; * file_link: unable to stat `/var/jenkins/workspace/mel_cedar-main/bui=
ldhost/amd-ubuntu14-32b/buildtype/iot/machine/mel-dra7xx-evm/build_mel-dra7=
xx-evm/tmp/work/mel_dra7xx_evm-mel-linux-gnueabi/console-image/1.0-r0/rootf=
s//var/cache/<span><span class=3D"">opkg</span></span>/volatile/file:_var_j=
enkins_workspace_mel_cedar-main_buildhost_amd-ubuntu14-32b_buildtype_iot_ma=
chine_mel-dra7xx-evm_build_mel-dra7xx-evm_tmp_deploy_ipk_mel_dra7xx_evm_ker=
nel-module-lttng-ring-buffer-client-mmap-overwrite_2.6.2+git0+7a88f8b506-r0=
.0_mel_dra7xx_evm.ipk&#39;: File name too long.<br>
&gt;<br>
&gt; Can anyone tell me why the addition of full path was added to the syml=
ink name and can we remove it cause it is cause issues?<br>
&gt;<br>
&gt; what does<br>
&gt;<br>
&gt; getconf PATH_MAX /<br>
&gt;<br>
&gt; show ?<br>
&gt;<br>
&gt; jenkins@amd-ubu14-32-3:~$ getconf -a | grep=C2=A0 PATH_MAX<br>
&gt; PATH_MAX=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096<br>
&gt; _POSIX_PATH_MAX=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 4096<br>
&gt;<br>
&gt;<br>
&gt; I think the issue is with file name not the path.<br>
&gt;<br>
&gt; Secondly the googling which I did reveals that symlink creation can&#3=
9;t be stopped. I just wanna confirm that is my findings correct?<br>
&gt;<br>
<br>
</span>This looks like something we overlooked in <span><span class=3D"">op=
kg</span></span>. When we added the caching code<br>
we didn&#39;t think about how long the paths and filenames might get during=
 the<br>
rootfs step. It&#39;s not currently possible to reduce the length of the sy=
mlink<br>
filenames, but it is possible to change the directory in which the symlinks=
 are<br>
created.<br>
<br>
Currently the <span><span class=3D"">opkg</span></span> cache dir can only =
be set in the <span><span class=3D"">opkg</span></span>.conf file. I think =
we<br>
should add a &#39;--cache-dir&#39; argument to <span><span class=3D"">opkg<=
/span></span>. If this is added you&#39;ll be able to<br>
set the following in your local.conf file to change the cache location. Eg.=
 to<br>
use &#39;/tmp/<span><span class=3D"">opkg</span></span>&#39; on the host du=
ring rootfs creation.<br>
<br>
=C2=A0 =C2=A0 OPKG_ARGS =3D &quot;--cache-dir=3D/tmp/<span><span class=3D""=
>opkg</span></span>&quot;<br>
<br>
I&#39;ll submit a patch to <span><span class=3D"">opkg</span></span> to add=
 this option.</div></blockquote></div><br></div></div>This will only shorte=
n the full path, not the filename length, so I doubt this&#39;ll solve it. =
That said, I can&#39;t actually successfully test this today, because cache=
_dir is made relative to offline_root, so setting such a path as you sugges=
t doesn&#39;t shorten the full path either.</blockquote></div><br>Also, did=
 a touch of just the cache filename and it gives the same filename length e=
rror, so where the cache dir is really isn&#39;t going to matter, it&#39;s =
the filename including the full path to a deep BUILDDIR, and therefore DEPL=
OY_DIR_IPK, which is the problem.<br>-- <br><div class=3D"gmail_signature">=
Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, Open=
Embedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Men=
tor Graphics</div>
</div></div>

--089e01176cad6e094c05228c7887--
