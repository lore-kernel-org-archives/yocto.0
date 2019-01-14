Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C97CE00CF4; Mon, 14 Jan 2019 15:28:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com
	[209.85.221.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C0AAE00CD1
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 15:28:39 -0800 (PST)
Received: by mail-vk1-f170.google.com with SMTP id 185so203626vkc.3
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 15:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kxFexzOU7OdvLfK2AQOfnY676lxmlISulSIQCq2cD/I=;
	b=PUCpirz8kGyJk0vWW34FMw6YzAm1UP1uUMn2JM65uvtd7VdcNk3F71YvgQGf4MNpli
	liaiu2nC68Zinty3yEN53JSR5tTKDP91uTTApypWV5aizq4KLZt1q+PJ96zfhfLA5BpE
	aI4foXnVhBcfvD8D97DJPvbyqSwah7DvjUzOTvh9TaD/pt7cmrPrwa/KNcfIoHrIijaN
	Qf17Yi/6qvLw354HjrSD2vATfF1UyX7Opq8U16wUpHnrkFiB+mTxNJ+Vl0nuMbU5i2Q6
	Qj0JLH1Dq3QZezj/EzsxPHql94nFBXr9nOIoFXU7f8kROspmyg+vXyC3legDg9MpM6AO
	zByw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kxFexzOU7OdvLfK2AQOfnY676lxmlISulSIQCq2cD/I=;
	b=Mq3ZVQDuvDYw/kfBOSQTiVdcNNJ388id4N75P4mZNSm0rmsaKmt9MArtvVMeOb7yyJ
	wAVg+lfWw6YyWLewGR8aAKz4EM4Ev3ko6k9WxEOc9BV062p4DGyuCNofQfJiV9+etVKW
	U8w4i2KI1YK+M6uppWWTUytoYScOQDYJdQMlDTvaFdnWLeiVUqeowuqB9utvcDK0eApe
	LgYh6inOJTSExj3J4Hxeif+x6Nh7X8BMldCJDuZiPXdZi0+2OhYbYi47VXfSqihUmSiA
	Txix5bzT4Jogn3HzMdYt0ayJoTPH8H83dGV18vB3RF8mRb0N+uCb2ceHyLsWkEPNMKzY
	kSOQ==
X-Gm-Message-State: AJcUukckfgrUV6onod4agfUBmt/N/bbW4Aymnmk91OD/TVXD0yoENM1I
	Yb64gOX15fCnVopPcc4od8pedcglsX+TqfKMZ+A=
X-Google-Smtp-Source: ALg8bN5u1VhFfcuFfDfBk6jclDEK7ZaWGDFARoqG97p9DdmBP5L2K7xKoZf1ihRr0ciplSK+94R93Y4HN6wO4w5MopQ=
X-Received: by 2002:a1f:60c9:: with SMTP id u192mr409594vkb.36.1547508518871; 
	Mon, 14 Jan 2019 15:28:38 -0800 (PST)
MIME-Version: 1.0
References: <20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<9dd76a25-1560-5bca-64d3-e6dd57a44ccc@windriver.com>
	<20181018190803.GB25172@mentor.com>
	<20181024234913.GA11980@deserted.net>
	<8a5b43c6-85eb-dd7a-ceee-d10f6977cca3@kernel.org>
	<CAKRytNw3Ct9mc1SVCRKDg8cK+KUvuQLhVoSD-7vJPu93eSk9Aw@mail.gmail.com>
	<a075bc8f-aae5-443c-ba5d-a75eb6b05e58@email.android.com>
	<20181231024607.GA14710@mentor.com>
	<1546224721158.55264@mentor.com>
	<CAKRytNxpn9ffa-KjQ4kGXZuPg7DiA3YXMkEx-=aqoLA-qpZCag@mail.gmail.com>
In-Reply-To: <CAKRytNxpn9ffa-KjQ4kGXZuPg7DiA3YXMkEx-=aqoLA-qpZCag@mail.gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Tue, 15 Jan 2019 00:28:27 +0100
Message-ID: <CAKRytNxh_yYL9to75TB9EXN=nzV6tBxLo6s_pyFmd-c-s2iMOQ@mail.gmail.com>
To: "MacDonald, Joe" <Joe_MacDonald@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Mon, 14 Jan 2019 23:28:41 -0000
Content-Type: multipart/alternative; boundary="0000000000008de5c3057f7367ee"

--0000000000008de5c3057f7367ee
Content-Type: text/plain; charset="UTF-8"

I tried with yocto thud and your repo (thud branch) and I can build without
issues.
However when I try to run "fixfiles -f -F relabel" the result is:
**Cleaning out /tmp*
**fixfiles: No suitable file systems found*
**Cleaning up labels on /tmp*
**cat: /initial_contexts/unlabeled: No such file or directory*
**secon: SELinux is not enabled*

I tried to check If I have xattrs in my ext4 partition and I can run these
commands as suggested here https://bbs.archlinux.org/viewtopic.php?id=176400
:

$ touch testfile
$ getfattr -n user.comment testfile
testfile: user.comment: No such attribute
$ getfattr testfile
$ setfattr -n user.comment -v "this is a comment" testfile
$ getfattr testfile
# file: testfile
user.comment

$ getfattr -n user.comment testfile
# file: testfile
user.comment="this is a comment"

$ setfattr -x user.comment testfile
$ getfattr testfile


My config.gz contains these:
# CONFIG_IP_NF_SECURITY is not set
# CONFIG_IP6_NF_SECURITY is not set
CONFIG_EXT2_FS_SECURITY=y
CONFIG_EXT3_FS_SECURITY=y
CONFIG_EXT4_FS_SECURITY=y
CONFIG_SECURITY_DMESG_RESTRICT=y
CONFIG_SECURITY=y
CONFIG_SECURITYFS=y
CONFIG_SECURITY_NETWORK=y
# CONFIG_SECURITY_NETWORK_XFRM is not set
# CONFIG_SECURITY_PATH is not set
CONFIG_SECURITY_SELINUX=y
# CONFIG_SECURITY_SELINUX_BOOTPARAM is not set
# CONFIG_SECURITY_SELINUX_DISABLE is not set
CONFIG_SECURITY_SELINUX_DEVELOP=y
CONFIG_SECURITY_SELINUX_AVC_STATS=y
CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=0
# CONFIG_SECURITY_SMACK is not set
# CONFIG_SECURITY_TOMOYO is not set
# CONFIG_SECURITY_APPARMOR is not set
# CONFIG_SECURITY_LOADPIN is not set
# CONFIG_SECURITY_YAMA is not set
# CONFIG_DEFAULT_SECURITY_SELINUX is not set
CONFIG_DEFAULT_SECURITY_DAC=y
CONFIG_DEFAULT_SECURITY=""

Is there a way to debug this issue with some tricks?
Am I missing something?

Thank u.


Il giorno mer 9 gen 2019 alle ore 21:55 Stefano Cappa <
stefano.cappa.ks89@gmail.com> ha scritto:

> Ok thank you, I'll try it.
>
> Il giorno lun 31 dic 2018 alle ore 03:52 MacDonald, Joe <
> Joe_MacDonald@mentor.com> ha scritto:
>
>> One additional quick note, in hope of avoiding any further confusion, I'm
>> working on the refpolicy version from July not January 2018.  Sorry about
>> that.
>>
>> -J.
>>
>> ________________________________________
>> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on
>> behalf of MacDonald, Joe
>> Sent: Sunday, December 30, 2018 9:46 PM
>> To: Stefano Cappa
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] [selinux] sumo compilation
>>
>> [Re: [yocto] [selinux] sumo compilation] On 18.12.30 (Sun 14:31)
>> MacDonald, Joe wrote:
>>
>> > I have both ready to go, there's been a few hiccups with my access to
>> the git
>> > server. I'll push my queued changes somewhere public when I get to a
>> keyboard
>> > later today so at least everyone can see what's coming.
>>
>> Update on this.  While we're sorting out the access issue, the current
>> master, sumo and thud branches on my personal mirror
>> (https://github.com/joeythesaint/meta-selinux) are mostly up-to-date
>> (the only thing I haven't included in there yet is the refpolicy update
>> for the 20180114 release, little overdue, that) and build for the
>> respective Yocto releases.  If that's not your experience, please let me
>> know and we'll get that sorted out right away.
>>
>> Thanks.
>>
>> -Joe.
>>
>> >
>> > -J.
>> >
>> > On Dec 30, 2018 6:29 AM, Stefano Cappa <stefano.cappa.ks89@gmail.com>
>> wrote:
>> > Are there any news about this? Also for thud branch.
>> >
>> > Il mar 30 ott 2018, 14:46 Sinan Kaya <okaya@kernel.org> ha scritto:
>> >
>> >     On 10/24/2018 7:49 PM, Joe MacDonald wrote:
>> >     > Hey all,
>> >     >
>> >     > I just thought I should quickly follow up on this.  I have a
>> change set
>> >     > ready that includes tagging and a minor tweak for sumo,
>> integration of
>> >     > the current outstanding patch list and a tag for thud and a
>> couple of
>> >     > additional things (possibly) for post-thud.  I'll send out a set
>> for
>> >     > sumo and maybe an additional one for thud/post- possibly tomorrow
>> or
>> >     > after I get home on Friday.
>> >
>> >     Thanks, we are looking forward to see it on yocto.
>> >
>> >     >
>> >     > -J.
>> >
>> >     --
>> >     _______________________________________________
>> >     yocto mailing list
>> >     yocto@yoctoproject.org
>> >     https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>

--0000000000008de5c3057f7367ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I tried with yocto thud and your repo (thud branch) and I =
can build without issues.<div>However when I try to run &quot;fixfiles -f -=
F relabel&quot; the result is:</div><div><div><b>*Cleaning out /tmp</b></di=
v><div><b>*fixfiles: No suitable file systems found</b></div><div><b>*Clean=
ing up labels on /tmp</b></div><div><b>*cat: /initial_contexts/unlabeled: N=
o such file or directory</b></div><div><b>*secon: SELinux is not enabled</b=
></div></div><div><b><br></b></div><div>I tried to check If I have xattrs i=
n my ext4 partition and I can run these commands as suggested here=C2=A0<a =
href=3D"https://bbs.archlinux.org/viewtopic.php?id=3D176400">https://bbs.ar=
chlinux.org/viewtopic.php?id=3D176400</a>:</div><div><pre style=3D"border:0=
px;margin-top:0px;margin-bottom:0px;padding:0px;font-size:1em;overflow:auto=
;width:1524px;direction:ltr;color:rgb(34,34,34)"><code style=3D"font-size:1=
em;padding:0.5em;display:inline-block">$ touch testfile
$ getfattr -n user.comment testfile
testfile: user.comment: No such attribute
$ getfattr testfile
$ setfattr -n user.comment -v &quot;this is a comment&quot; testfile
$ getfattr testfile
# file: testfile
user.comment

$ getfattr -n user.comment testfile
# file: testfile
user.comment=3D&quot;this is a comment&quot;

$ setfattr -x user.comment testfile
$ getfattr testfile</code></pre></div><div><br></div><div>My config.gz cont=
ains these:</div><div><div># CONFIG_IP_NF_SECURITY is not set</div><div># C=
ONFIG_IP6_NF_SECURITY is not set</div><div>CONFIG_EXT2_FS_SECURITY=3Dy</div=
><div>CONFIG_EXT3_FS_SECURITY=3Dy</div><div>CONFIG_EXT4_FS_SECURITY=3Dy</di=
v><div>CONFIG_SECURITY_DMESG_RESTRICT=3Dy</div><div>CONFIG_SECURITY=3Dy</di=
v><div>CONFIG_SECURITYFS=3Dy</div><div>CONFIG_SECURITY_NETWORK=3Dy</div><di=
v># CONFIG_SECURITY_NETWORK_XFRM is not set</div><div># CONFIG_SECURITY_PAT=
H is not set</div><div>CONFIG_SECURITY_SELINUX=3Dy</div><div># CONFIG_SECUR=
ITY_SELINUX_BOOTPARAM is not set</div><div># CONFIG_SECURITY_SELINUX_DISABL=
E is not set</div><div>CONFIG_SECURITY_SELINUX_DEVELOP=3Dy</div><div>CONFIG=
_SECURITY_SELINUX_AVC_STATS=3Dy</div><div>CONFIG_SECURITY_SELINUX_CHECKREQP=
ROT_VALUE=3D0</div><div># CONFIG_SECURITY_SMACK is not set</div><div># CONF=
IG_SECURITY_TOMOYO is not set</div><div># CONFIG_SECURITY_APPARMOR is not s=
et</div><div># CONFIG_SECURITY_LOADPIN is not set</div><div># CONFIG_SECURI=
TY_YAMA is not set</div><div># CONFIG_DEFAULT_SECURITY_SELINUX is not set</=
div><div>CONFIG_DEFAULT_SECURITY_DAC=3Dy</div><div>CONFIG_DEFAULT_SECURITY=
=3D&quot;&quot;</div></div><div><br></div><div>Is there a way to debug this=
 issue with some tricks?</div><div>Am I missing something?</div><div><br></=
div><div>Thank u.</div><div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr">Il giorno mer 9 gen 2019 alle ore 21:55 Stefano Cappa &lt;=
<a href=3D"mailto:stefano.cappa.ks89@gmail.com">stefano.cappa.ks89@gmail.co=
m</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr">Ok thank you, I&#39;ll try it.</div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr">Il giorno lun 31 dic 2018 alle ore 03:52 MacDonald, Joe &lt;<a=
 href=3D"mailto:Joe_MacDonald@mentor.com" target=3D"_blank">Joe_MacDonald@m=
entor.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">One a=
dditional quick note, in hope of avoiding any further confusion, I&#39;m wo=
rking on the refpolicy version from July not January 2018.=C2=A0 Sorry abou=
t that.<br>
<br>
-J.<br>
<br>
________________________________________<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a> &lt;<a href=3D"mailto:yocto-bounces@yocto=
project.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>&gt; on be=
half of MacDonald, Joe<br>
Sent: Sunday, December 30, 2018 9:46 PM<br>
To: Stefano Cappa<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yocto=
project.org</a><br>
Subject: Re: [yocto] [selinux] sumo compilation<br>
<br>
[Re: [yocto] [selinux] sumo compilation] On 18.12.30 (Sun 14:31) MacDonald,=
 Joe wrote:<br>
<br>
&gt; I have both ready to go, there&#39;s been a few hiccups with my access=
 to the git<br>
&gt; server. I&#39;ll push my queued changes somewhere public when I get to=
 a keyboard<br>
&gt; later today so at least everyone can see what&#39;s coming.<br>
<br>
Update on this.=C2=A0 While we&#39;re sorting out the access issue, the cur=
rent<br>
master, sumo and thud branches on my personal mirror<br>
(<a href=3D"https://github.com/joeythesaint/meta-selinux" rel=3D"noreferrer=
" target=3D"_blank">https://github.com/joeythesaint/meta-selinux</a>) are m=
ostly up-to-date<br>
(the only thing I haven&#39;t included in there yet is the refpolicy update=
<br>
for the 20180114 release, little overdue, that) and build for the<br>
respective Yocto releases.=C2=A0 If that&#39;s not your experience, please =
let me<br>
know and we&#39;ll get that sorted out right away.<br>
<br>
Thanks.<br>
<br>
-Joe.<br>
<br>
&gt;<br>
&gt; -J.<br>
&gt;<br>
&gt; On Dec 30, 2018 6:29 AM, Stefano Cappa &lt;<a href=3D"mailto:stefano.c=
appa.ks89@gmail.com" target=3D"_blank">stefano.cappa.ks89@gmail.com</a>&gt;=
 wrote:<br>
&gt; Are there any news about this? Also for thud branch.<br>
&gt;<br>
&gt; Il mar 30 ott 2018, 14:46 Sinan Kaya &lt;<a href=3D"mailto:okaya@kerne=
l.org" target=3D"_blank">okaya@kernel.org</a>&gt; ha scritto:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 10/24/2018 7:49 PM, Joe MacDonald wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hey all,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I just thought I should quickly follow up on t=
his.=C2=A0 I have a change set<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ready that includes tagging and a minor tweak =
for sumo, integration of<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; the current outstanding patch list and a tag f=
or thud and a couple of<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; additional things (possibly) for post-thud.=C2=
=A0 I&#39;ll send out a set for<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; sumo and maybe an additional one for thud/post=
- possibly tomorrow or<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; after I get home on Friday.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks, we are looking forward to see it on yocto.<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; -J.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0yocto mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:yocto@yoctoproject.org" target=3D=
"_blank">yocto@yoctoproject.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.yoctoproject.org/listinfo/=
yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/=
listinfo/yocto</a><br>
&gt;<br>
<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
</blockquote></div>
</blockquote></div>

--0000000000008de5c3057f7367ee--
