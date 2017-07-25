Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3ABE5E00C2B; Tue, 25 Jul 2017 00:55:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bobadeshrikant[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9656E00C25
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 00:55:02 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id x3so41739182oia.1
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 00:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xiSD9p59UDWn03d3WGrXFkWIZKz363Mc2Jg/CAmZNSw=;
	b=ruv0dAsKaXU8eZxV5+aTa3P3XvRVSyMzak7FcQ9ytWO8j7kXvH48ISjOxg+sqhiuhs
	xS8ngLy2U2DnYNg9t4zSUklWdXN0nOdfemerxxQhjjSV3LCV066qvVKHPDVuPbLhLwc2
	SIv0KrFj5et27v5ReVvB9LpQHs8QXpvbqiHTWxx3nIu5idz9KGiuVzStX7GajR2QHywc
	vb8oiwMge0cKZ2qEqkKdF6h4rxoYT4QhVnmflfX5nxTTNnjeAoo7fhEzx+bflzaxoWwH
	CK0w7AVs8WRI/6CNGCqlkkhcrhW6RSEuCScLUKZ0tl2wOPUA7GlQort9h1XpMinmWg+Q
	mNAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xiSD9p59UDWn03d3WGrXFkWIZKz363Mc2Jg/CAmZNSw=;
	b=Du9i9K5Abf8aONksu29ESV1K/Bi3Bi5ihmFnBQmRQSeCibaiMarNDRn4/AmhvqjjS3
	+Douc1OhNNPZpjkvIZoTVVJR8GZcg++GJp6MtEVRz8XLs9Fk9dd5YWPxq1JVm5QQ+a8X
	9FOT5nMeiJ3mkSbZEhngGYxOUi4I2UMxmcHkm3DOp9409bSDMVo0272itXN9zEkILEcT
	sk1vQKFrcBo9VTE+p2dFPpvjFFAbT5rcZE85q/wzYYEkcXb/5p5AIL856DoJzfizLa8z
	yDxnupKp+/MLGCQoiykXk/jwHc4+XPYfvJKeRn5RhjoedqGWjzToPJXqa1oPiW4Cp/hj
	u/pg==
X-Gm-Message-State: AIVw112zCVXId0zEAahdJ20oTdUnV0fa+iX4Ukd/fiwhqTy/Pvr2iyqs
	hd7WOdK7fz1ZTTv7O/mmotOXOhHRGQ==
X-Received: by 10.202.90.193 with SMTP id o184mr3137533oib.208.1500969301907; 
	Tue, 25 Jul 2017 00:55:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.132.6 with HTTP; Tue, 25 Jul 2017 00:55:01 -0700 (PDT)
In-Reply-To: <CAGb_=SX2rO_o6aCu2CVQo56zsmFiqWpPJ-sLU5TkHpdjCw7Ppg@mail.gmail.com>
References: <CAGb_=SVC0Z_-ZKD2+VAt9HMG+ejYm0VcrECyn6cLRVtDFWYcfQ@mail.gmail.com>
	<CAGb_=SXgdg=Za2JbeYadJi-kOA5EtKLmw+jdDcn_Fzn+iRa2tw@mail.gmail.com>
	<9F567B9C-65EE-4852-A3E9-37DD09A7A7C0@redfish.com.au>
	<20170721194652.v7xh3culqr2r2h6v@mentor.com>
	<CAGb_=SX2rO_o6aCu2CVQo56zsmFiqWpPJ-sLU5TkHpdjCw7Ppg@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
Date: Tue, 25 Jul 2017 13:25:01 +0530
Message-ID: <CALwQErqOEibqM8ExQmrp3SnBiWxecsV9AxR30Z8eygs9j96d+Q@mail.gmail.com>
To: Marco Ostini <marco@ostini.org>
Cc: yocto@yoctoproject.org, Shrikant Bobade <Shrikant_Bobade@mentor.com>
Subject: Re: SELinux with Busybox on morty
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
X-List-Received-Date: Tue, 25 Jul 2017 07:55:04 -0000
Content-Type: multipart/alternative; boundary="001a114185ac0f208105551fa6a3"

--001a114185ac0f208105551fa6a3
Content-Type: text/plain; charset="UTF-8"

Hi Marco,

On similar lines, as Joe suggested please try with refpolicy 2.20151208
from morty,
also I would like to recommend start with refpolicy-minimum policy variant,
then you can explore other variants like refpolicy-targeted.

On Mon, Jul 24, 2017 at 1:15 PM, Marco Ostini <marco@ostini.org> wrote:
>
> Hi Joe & Shrikant,
>
> Many thanks for your response. It was good to know that busybox can
function with SELinux enforcing enabled.
>
I also confirm busybox works fine with enforcing mode on minimum variant,
used it in multiple ways.

> Sorry not to mention the policy we're currently using. It's:
>    refpolicy-targeted
>
> ||/ Name                            Version              Architecture
    Description
>
+++-===============================-====================-====================-====================================================================
> ii  refpolicy-targeted              git-r0               amd64
     SELinux targeted policy
>
> We'll build policy based on 2.20151208 and give it a try to see how it
behaves.
>
> It appears to me that policy itself is responsible for semanage not
functioning. When I try:
>
>    semanage -v port -l
>
> I see errors like this:
>
> 1088. 07/24/17 07:29:46 semanage
unconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023 2 dir write
system_u:object_r:lib_t:s0 denied 1095
> 1089. 07/24/17 07:29:46 semanage
unconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023 2 dir write
system_u:object_r:lib_t:s0 denied 1096
>
> or
>
> time->Mon Jul 24 07:29:46 2017
> type=PROCTITLE msg=audit(1500881386.907:1101):
proctitle=2F7573722F62696E2F707974686F6E002D4573002F7573722F7362696E2F73656D616E616765002D7600706F7274002D6C
> type=SYSCALL msg=audit(1500881386.907:1101): arch=c000003e syscall=2
success=no exit=-13 a0=7ddf20 a1=2c1 a2=81a4 a3=5640003640100 items=0
ppid=496 pid=1201 auid=0 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0
fsgid=0 tty=pts0 ses=1 comm="semanage" exe="/usr/bin/python2.7"
subj=unconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023 key=(null)
> type=AVC msg=audit(1500881386.907:1101): avc:  denied  { write } for
 pid=1201 comm="semanage" name="sepolgen" dev="vda" ino=6091
scontext=unconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023
tcontext=system_u:object_r:lib_t:s0 tclass=dir permissive=0
>
> The majority of the errors however are related to start_getty:
>
> 142. 07/24/17 06:14:04 start_getty system_u:system_r:getty_t:s0 4 dir
search system_u:object_r:default_t:s0 denied 149
>
> time->Mon Jul 24 07:34:21 2017
> type=PROCTITLE msg=audit(1500881661.906:1160):
proctitle=2F62696E2F7368002F62696E2F73746172745F676574747900313135323030007474795330
> type=SYSCALL msg=audit(1500881661.906:1160): arch=c000003e syscall=59
success=no exit=-13 a0=6fca60 a1=6fcc40 a2=6faf90 a3=59a items=0 ppid=1244
pid=1246 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0
fsgid=0 tty=(none) ses=4294967295 comm="start_getty" exe="/bin/bash"
subj=system_u:system_r:getty_t:s0 key=(null)
> type=AVC msg=audit(1500881661.906:1160): avc:  denied  { search } for
 pid=1246 comm="start_getty" name="sbin" dev="vda" ino=7236
scontext=system_u:system_r:getty_t:s0
tcontext=system_u:object_r:default_t:s0 tclass=dir permissive=0
>
> I've applied an appropriate context to start_getty, but that didn't
prevent the errors:
>
> ls -alZ /bin/start_getty
> -rwxr-xr-x. 1 root root system_u:object_r:getty_exec_t:s0 99 Jul 21 02:55
/bin/start_getty
>
> start_getty is a shell script that points back to /sbin/getty which is a
symlink to /usr/lib/busybox/sbin/getty
>
> So I applied a context to  /usr/lib/busybox/sbin/getty without it
preventing the above mentioned errors:
>
> ls -alZ /usr/lib/busybox/sbin/getty
> -rwxr-xr-x. 1 root root system_u:object_r:getty_exec_t:s0 21 Jun  9 03:39
/usr/lib/busybox/sbin/getty
>

I think you are trying to patch the policy Or fixing the avc denials w.r.to
context,

To do it, we have audit tools available from meta-selinux which will help
to understand the avc denials in detail,
please try using audit2why on avc denials to get why we hit with denials.
& further using audit2allow to generate the allow rules based on current
policy & then try with generated allow rules.

Hope it helps :)

> I'm keen to see how policy based on 2.20151208 will look.
>
> Additional to trying 2.20151208 if you have any suggestions or advice I'd
be grateful to hear it.
Please start exploring with refpolicy-minimum..

>
> Cheers,
> Marco
>
>

Thanks
Shrikant

>
> On 22 July 2017 at 05:46, Joe MacDonald <Joe_MacDonald@mentor.com> wrote:
>>
>> Hi Justin / Marco,
>>
>> [Re: SELinux with Busybox on morty] On 17.07.19 (Wed 16:05) Justin
Clacherty wrote:
>>
>> > Hi Joe,
>> >
>> > Is this something you or one of the other meta-selinux devs are able
>> > to help out with or is it more of an upstream question?
>>
>> I'll see if I can give this a shot.  :-)
>>
>> >
>> > Cheers,
>> > Justin.
>> >
>> >
>> > > On 17 Jul 2017, at 4:57 pm, Marco Ostini <marco@ostini.org> wrote:
>> > >
>> > >
>> > > Hi All,
>> > >
>> > > At the moment I'm attempting to prepare a VM of morty with SELinux
>> > > running well in enforcing mode. Once bedded down this will be
>> > > running on an embedded system.
>> > >
>> > > We use Busybox to keep the environment slim.
>> > >
>> > > As you may be aware the file contexts of
>> > > /etc/selinux/targeted/contexts/files/file_contexts don't include
>> > > appropriate paths (/sbin + /usr/lib/busybox/sbin/) and relative file
>> > > contexts for commands provided by Busybox. The /sbin files provided
>> > > by Busybox are symlinks to their counterparts in
>> > > /usr/lib/busybox/sbin/.
>> > >
>> > > I've attempted to use semanage to apply file contexts and look up
>> > > login contexts. Any time I use semanage I receive this message:
>> > >
>> > >    Error: Failed to read //etc/selinux/targeted/policy/policy.30
policy file
>> > >
>> > > In an attempt to mitigate this error I ran semodule --build and
>> > > while it did rebuild the policy file, it didn't mitigate the error
>> > > message generated by semanage. At the moment I'm applying temporary
>> > > file contexts with chcon.
>> > >
>> > > My questions are:
>> > >
>> > > 1. Is it possible to run Busybox (providing init, getty, syslog ...)
>> > > in SELinux enforcing. If so, where's the policy files?
>>
>> You haven't mentioned which policy you're currently using so I'm
>> guessing it is the default you get from meta-selinux, that is
>> refpolicy-git.  I've been debugging some (I think) unrelated issues with
>> refpolicy-git this week, so my advice would first to be try out
>> 2.20151208, the current release version we have in tree.  That's
>> obviously also out of date, but it is currently better tested than the
>> git recipe.
>>
>> All that said, yes, we have been, in the past, able to use busybox with
>> SELinux enforcing enabled, though as you can see from the layer, we've
>> had to tweak refpolicy to make it work well.  I'm adding a colleague of
>> mine here, Shrikant, who has done a fair bit of recent work with
>> meta-selinux as well, he might have some additional insight into the
>> current status of busybox-based systems.
>>
>> > > 2. Is there some documentation somewhere on reference builds of
>> > > Morty with SELinux enforcing ?
>>
>> There is not at the moment, as far as I know.  It's possible that
>> someone else currently using that combination can help out with some
>> guidance, but we haven't done any Morty+SELinux specific documentation.
>> Since I'm investigating some other issues right now in a slightly
>> different area, though, I may get some time next week to write up
>> something quick for this for you, though. If I do, I'll be sure to share
>> it here.
>>
>> --
>> -Joe MacDonald.
>> :wq
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114185ac0f208105551fa6a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marco,<br><br>On similar lines, as Joe suggested please=
 try with refpolicy 2.20151208 from morty,<br>also I would like to recommen=
d start with refpolicy-minimum policy variant,<br>then you can explore othe=
r variants like refpolicy-targeted.<br><br>On Mon, Jul 24, 2017 at 1:15 PM,=
 Marco Ostini &lt;<a href=3D"mailto:marco@ostini.org">marco@ostini.org</a>&=
gt; wrote:<br>&gt;<br>&gt; Hi Joe &amp; Shrikant,<br>&gt;<br>&gt; Many than=
ks for your response. It was good to know that busybox can function with SE=
Linux enforcing enabled.<br>&gt;<br>I also confirm busybox works fine with =
enforcing mode on minimum variant, used it in multiple ways.<br><br>&gt; So=
rry not to mention the policy we&#39;re currently using. It&#39;s:<br>&gt; =
=C2=A0 =C2=A0refpolicy-targeted<br>&gt;<br>&gt; ||/ Name =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Version =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Architecture =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Description<br>&gt; +++-=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D-=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D-=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D-=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&gt; ii =C2=A0refpolicy-targeted =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 amd64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0SELinux targeted policy<br>&gt;<br>&gt; We&#39;ll build policy ba=
sed on 2.20151208 and give it a try to see how it behaves.<br>&gt;<br>&gt; =
It appears to me that policy itself is responsible for semanage not functio=
ning. When I try:<br>&gt;<br>&gt; =C2=A0 =C2=A0semanage -v port -l<br>&gt;<=
br>&gt; I see errors like this:<br>&gt;<br>&gt; 1088. 07/24/17 07:29:46 sem=
anage unconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023 2 dir write syste=
m_u:object_r:lib_t:s0 denied 1095<br>&gt; 1089. 07/24/17 07:29:46 semanage =
unconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023 2 dir write system_u:ob=
ject_r:lib_t:s0 denied 1096<br>&gt;<br>&gt; or<br>&gt;<br>&gt; time-&gt;Mon=
 Jul 24 07:29:46 2017<br>&gt; type=3DPROCTITLE msg=3Daudit(1500881386.907:1=
101): proctitle=3D2F7573722F62696E2F707974686F6E002D4573002F7573722F7362696=
E2F73656D616E616765002D7600706F7274002D6C<br>&gt; type=3DSYSCALL msg=3Daudi=
t(1500881386.907:1101): arch=3Dc000003e syscall=3D2 success=3Dno exit=3D-13=
 a0=3D7ddf20 a1=3D2c1 a2=3D81a4 a3=3D5640003640100 items=3D0 ppid=3D496 pid=
=3D1201 auid=3D0 uid=3D0 gid=3D0 euid=3D0 suid=3D0 fsuid=3D0 egid=3D0 sgid=
=3D0 fsgid=3D0 tty=3Dpts0 ses=3D1 comm=3D&quot;semanage&quot; exe=3D&quot;/=
usr/bin/python2.7&quot; subj=3Dunconfined_u:unconfined_r:semanage_t:s0-s0:c=
0.c1023 key=3D(null)<br>&gt; type=3DAVC msg=3Daudit(1500881386.907:1101): a=
vc: =C2=A0denied =C2=A0{ write } for =C2=A0pid=3D1201 comm=3D&quot;semanage=
&quot; name=3D&quot;sepolgen&quot; dev=3D&quot;vda&quot; ino=3D6091 scontex=
t=3Dunconfined_u:unconfined_r:semanage_t:s0-s0:c0.c1023 tcontext=3Dsystem_u=
:object_r:lib_t:s0 tclass=3Ddir permissive=3D0<br>&gt;<br>&gt; The majority=
 of the errors however are related to start_getty:<br>&gt;<br>&gt; 142. 07/=
24/17 06:14:04 start_getty system_u:system_r:getty_t:s0 4 dir search system=
_u:object_r:default_t:s0 denied 149<br>&gt;<br>&gt; time-&gt;Mon Jul 24 07:=
34:21 2017<br>&gt; type=3DPROCTITLE msg=3Daudit(1500881661.906:1160): proct=
itle=3D2F62696E2F7368002F62696E2F73746172745F676574747900313135323030007474=
795330<br>&gt; type=3DSYSCALL msg=3Daudit(1500881661.906:1160): arch=3Dc000=
003e syscall=3D59 success=3Dno exit=3D-13 a0=3D6fca60 a1=3D6fcc40 a2=3D6faf=
90 a3=3D59a items=3D0 ppid=3D1244 pid=3D1246 auid=3D4294967295 uid=3D0 gid=
=3D0 euid=3D0 suid=3D0 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3D(none) s=
es=3D4294967295 comm=3D&quot;start_getty&quot; exe=3D&quot;/bin/bash&quot; =
subj=3Dsystem_u:system_r:getty_t:s0 key=3D(null)<br>&gt; type=3DAVC msg=3Da=
udit(1500881661.906:1160): avc: =C2=A0denied =C2=A0{ search } for =C2=A0pid=
=3D1246 comm=3D&quot;start_getty&quot; name=3D&quot;sbin&quot; dev=3D&quot;=
vda&quot; ino=3D7236 scontext=3Dsystem_u:system_r:getty_t:s0 tcontext=3Dsys=
tem_u:object_r:default_t:s0 tclass=3Ddir permissive=3D0<br>&gt;<br>&gt; I&#=
39;ve applied an appropriate context to start_getty, but that didn&#39;t pr=
event the errors:<br>&gt;<br>&gt; ls -alZ /bin/start_getty<br>&gt; -rwxr-xr=
-x. 1 root root system_u:object_r:getty_exec_t:s0 99 Jul 21 02:55 /bin/star=
t_getty<br>&gt;<br>&gt; start_getty is a shell script that points back to /=
sbin/getty which is a symlink to /usr/lib/busybox/sbin/getty<br>&gt;<br>&gt=
; So I applied a context to =C2=A0/usr/lib/busybox/sbin/getty without it pr=
eventing the above mentioned errors:<br>&gt;<br>&gt; ls -alZ /usr/lib/busyb=
ox/sbin/getty<br>&gt; -rwxr-xr-x. 1 root root system_u:object_r:getty_exec_=
t:s0 21 Jun =C2=A09 03:39 /usr/lib/busybox/sbin/getty<br>&gt;<br><br>I thin=
k you are trying to patch the policy Or fixing the avc denials <a href=3D"h=
ttp://w.r.to">w.r.to</a> context,<br><br>To do it, we have audit tools avai=
lable from meta-selinux which will help to understand the avc denials in de=
tail,<br>please try using audit2why on avc denials to get why we hit with d=
enials.<br>&amp; further using audit2allow to generate the allow rules base=
d on current policy &amp; then try with generated allow rules.<br><br>Hope =
it helps :)<br><br>&gt; I&#39;m keen to see how policy based on 2.20151208 =
will look.<br>&gt;<br>&gt; Additional to trying 2.20151208 if you have any =
suggestions or advice I&#39;d be grateful to hear it.<br>Please start explo=
ring with refpolicy-minimum..<br><br>&gt;<br>&gt; Cheers,<br>&gt; Marco<br>=
&gt;<br>&gt;<br><br>Thanks<br>Shrikant<br><br>&gt;<br>&gt; On 22 July 2017 =
at 05:46, Joe MacDonald &lt;<a href=3D"mailto:Joe_MacDonald@mentor.com">Joe=
_MacDonald@mentor.com</a>&gt; wrote:<br>&gt;&gt;<br>&gt;&gt; Hi Justin / Ma=
rco,<br>&gt;&gt;<br>&gt;&gt; [Re: SELinux with Busybox on morty] On 17.07.1=
9 (Wed 16:05) Justin Clacherty wrote:<br>&gt;&gt;<br>&gt;&gt; &gt; Hi Joe,<=
br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Is this something you or one of the other=
 meta-selinux devs are able<br>&gt;&gt; &gt; to help out with or is it more=
 of an upstream question?<br>&gt;&gt;<br>&gt;&gt; I&#39;ll see if I can giv=
e this a shot. =C2=A0:-)<br>&gt;&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Chee=
rs,<br>&gt;&gt; &gt; Justin.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; &gt; On 17 Jul 2017, at 4:57 pm, Marco Ostini &lt;<a href=3D"mailto:ma=
rco@ostini.org">marco@ostini.org</a>&gt; wrote:<br>&gt;&gt; &gt; &gt;<br>&g=
t;&gt; &gt; &gt;<br>&gt;&gt; &gt; &gt; Hi All,<br>&gt;&gt; &gt; &gt;<br>&gt=
;&gt; &gt; &gt; At the moment I&#39;m attempting to prepare a VM of morty w=
ith SELinux<br>&gt;&gt; &gt; &gt; running well in enforcing mode. Once bedd=
ed down this will be<br>&gt;&gt; &gt; &gt; running on an embedded system.<b=
r>&gt;&gt; &gt; &gt;<br>&gt;&gt; &gt; &gt; We use Busybox to keep the envir=
onment slim.<br>&gt;&gt; &gt; &gt;<br>&gt;&gt; &gt; &gt; As you may be awar=
e the file contexts of<br>&gt;&gt; &gt; &gt; /etc/selinux/targeted/contexts=
/files/file_contexts don&#39;t include<br>&gt;&gt; &gt; &gt; appropriate pa=
ths (/sbin + /usr/lib/busybox/sbin/) and relative file<br>&gt;&gt; &gt; &gt=
; contexts for commands provided by Busybox. The /sbin files provided<br>&g=
t;&gt; &gt; &gt; by Busybox are symlinks to their counterparts in<br>&gt;&g=
t; &gt; &gt; /usr/lib/busybox/sbin/.<br>&gt;&gt; &gt; &gt;<br>&gt;&gt; &gt;=
 &gt; I&#39;ve attempted to use semanage to apply file contexts and look up=
<br>&gt;&gt; &gt; &gt; login contexts. Any time I use semanage I receive th=
is message:<br>&gt;&gt; &gt; &gt;<br>&gt;&gt; &gt; &gt; =C2=A0 =C2=A0Error:=
 Failed to read //etc/selinux/targeted/policy/policy.30 policy file<br>&gt;=
&gt; &gt; &gt;<br>&gt;&gt; &gt; &gt; In an attempt to mitigate this error I=
 ran semodule --build and<br>&gt;&gt; &gt; &gt; while it did rebuild the po=
licy file, it didn&#39;t mitigate the error<br>&gt;&gt; &gt; &gt; message g=
enerated by semanage. At the moment I&#39;m applying temporary<br>&gt;&gt; =
&gt; &gt; file contexts with chcon.<br>&gt;&gt; &gt; &gt;<br>&gt;&gt; &gt; =
&gt; My questions are:<br>&gt;&gt; &gt; &gt;<br>&gt;&gt; &gt; &gt; 1. Is it=
 possible to run Busybox (providing init, getty, syslog ...)<br>&gt;&gt; &g=
t; &gt; in SELinux enforcing. If so, where&#39;s the policy files?<br>&gt;&=
gt;<br>&gt;&gt; You haven&#39;t mentioned which policy you&#39;re currently=
 using so I&#39;m<br>&gt;&gt; guessing it is the default you get from meta-=
selinux, that is<br>&gt;&gt; refpolicy-git.=C2=A0 I&#39;ve been debugging s=
ome (I think) unrelated issues with<br>&gt;&gt; refpolicy-git this week, so=
 my advice would first to be try out<br>&gt;&gt; 2.20151208, the current re=
lease version we have in tree.=C2=A0 That&#39;s<br>&gt;&gt; obviously also =
out of date, but it is currently better tested than the<br>&gt;&gt; git rec=
ipe.<br>&gt;&gt;<br>&gt;&gt; All that said, yes, we have been, in the past,=
 able to use busybox with<br>&gt;&gt; SELinux enforcing enabled, though as =
you can see from the layer, we&#39;ve<br>&gt;&gt; had to tweak refpolicy to=
 make it work well.=C2=A0 I&#39;m adding a colleague of<br>&gt;&gt; mine he=
re, Shrikant, who has done a fair bit of recent work with<br>&gt;&gt; meta-=
selinux as well, he might have some additional insight into the<br>&gt;&gt;=
 current status of busybox-based systems.<br>&gt;&gt;<br>&gt;&gt; &gt; &gt;=
 2. Is there some documentation somewhere on reference builds of<br>&gt;&gt=
; &gt; &gt; Morty with SELinux enforcing ?<br>&gt;&gt;<br>&gt;&gt; There is=
 not at the moment, as far as I know.=C2=A0 It&#39;s possible that<br>&gt;&=
gt; someone else currently using that combination can help out with some<br=
>&gt;&gt; guidance, but we haven&#39;t done any Morty+SELinux specific docu=
mentation.<br>&gt;&gt; Since I&#39;m investigating some other issues right =
now in a slightly<br>&gt;&gt; different area, though, I may get some time n=
ext week to write up<br>&gt;&gt; something quick for this for you, though. =
If I do, I&#39;ll be sure to share<br>&gt;&gt; it here.<br>&gt;&gt;<br>&gt;=
&gt; --<br>&gt;&gt; -Joe MacDonald.<br>&gt;&gt; :wq<br>&gt;<br>&gt;<br>&gt;=
<br>&gt; --<br>&gt; _______________________________________________<br>&gt;=
 yocto mailing list<br>&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto=
@yoctoproject.org</a><br>&gt; <a href=3D"https://lists.yoctoproject.org/lis=
tinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>&gt;</div=
>

--001a114185ac0f208105551fa6a3--
