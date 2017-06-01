Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17D9AE00B47; Thu,  1 Jun 2017 00:10:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f179.google.com (mail-yb0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90EF8E00ADD
	for <yocto@lists.yoctoproject.org>;
	Thu,  1 Jun 2017 00:10:39 -0700 (PDT)
Received: by mail-yb0-f179.google.com with SMTP id r66so8873818yba.2
	for <yocto@lists.yoctoproject.org>;
	Thu, 01 Jun 2017 00:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=upWbyYaVVa3tSecgtgYMF9lua3d4eGswC6BQEfUj3zE=;
	b=SghZIE0CV/e4cLI8cm4mNCQpRRmyryX+XJEgRKUqNj6FCkbvRRDb36VYx5qYYPV6vL
	neC3BydcbfWaJEJBIa3ZQZMbGWjO9JaO6JQhGVIDK1sxeOv8CUyx7ZOH2sKGyUSBiOxt
	sDZ/eHSkAQzTUDwWZmUocf81dlih+h+otec4v3q9Y7Aul8X71zy3y6dsqPp8LKY7w9M9
	A5LU+Bysg/IWN7NxwxHeXEqv1c1msR9OQvrEdyUh4GVnl69Xs2YOVDwbRhuMJx+j0tH7
	HZDnUkhjqLgdlx4WSSZEth5xsDXkAjyKXrgdGa4ef6PKiEkowk/PyTXpxrd8tY+csTse
	4X5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=upWbyYaVVa3tSecgtgYMF9lua3d4eGswC6BQEfUj3zE=;
	b=I3H+DTg6KkVD/6pgjoc/oR9S6qiwtfti5FgBs0Wo2ITsZu7XpFAB+BJxwJTTQZ8PhL
	onsjlAhMykDNi2epNZxb1W6YIi1wgfM1RFkLwjQIfGLvEM7VLeIjFbWwjkPjTMqiNfVX
	vXrBDmItzXrD1ZetVJUF6mvV84mTByCtRXeFgneGPXefvK1NzthNHpcj+IkcLMhwMfP6
	/STUaUo8yQyRUamRu9JLJ4iHEHNfgabWh87L6XGcphNqeUtj5BYIhN19YxH55p1kqx6g
	uqfqw7qpBmA+aYF8R5M0PZY2pNhtr2It4KUq8TyKYEdwsoL4WO60NA/4HRCij23RDrJG
	luLw==
X-Gm-Message-State: AODbwcBEHQnbDu7N6Ol4U4FCOPqJO1f7DAeexy1L1d4Jyoz1nkZH2LNG
	rE84c/Rsgizif0nc9/IcAJaQK+YPOg==
X-Received: by 10.37.224.214 with SMTP id x205mr14246740ybg.101.1496301039104; 
	Thu, 01 Jun 2017 00:10:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.162.38 with HTTP; Thu, 1 Jun 2017 00:10:38 -0700 (PDT)
In-Reply-To: <CA+chaQe2TbD08XjQpEfnLOfgNFcVMQH=f_FRnyAeabPAVsBndg@mail.gmail.com>
References: <20170530075723.18340-1-Martin.Jansa@gmail.com>
	<CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
	<CAPyrkgyar=GAr2QkqPe+Tjg=yp=yde_V3MKoXSeKZFb9StCXBw@mail.gmail.com>
	<CAJ86T=XF11yQjPFHXGHHk28MTQF1FQnEz_D+8s=6vk5AO6oFPQ@mail.gmail.com>
	<CAMKF1soe0qjKuyASY+sE4rcvOM-uAqzBVdNbJb2=f0c6gOhZ_w@mail.gmail.com>
	<CAK18fxF3uXOdsZkaN9f-DKJaMc+4GVfW28xTVK9a-01x+ktLXA@mail.gmail.com>
	<CAMKF1sqVEbdMKnqHHwsdWrs6aPDOowreRCZuk2h39J2XQEV8TA@mail.gmail.com>
	<CAPyrkgwGS+oheJHGudM-SiveTkdefgexcLoYfsbq+mReHXt+HQ@mail.gmail.com>
	<CA+chaQe2TbD08XjQpEfnLOfgNFcVMQH=f_FRnyAeabPAVsBndg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 1 Jun 2017 09:10:38 +0200
Message-ID: <CA+chaQcufcNiAh2s5PCtQc1ES4B0uYcsBotV3BG0uqG0NRgw0w@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-raspberrypi] linux-raspberrypi_dev: don't use AUTOREV
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
X-List-Received-Date: Thu, 01 Jun 2017 07:10:52 -0000
Content-Type: multipart/alternative; boundary="94eb2c089f0ae9bfc80550e0bba1"

--94eb2c089f0ae9bfc80550e0bba1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

And it's not clear from the diff you send, but like linux-yocto-dev.bb
example above, the recipe needs to be renamed from linux-raspberrypi_dev.bb
to linux-raspberrypi-dev.bb to make it different provider.

On Thu, Jun 1, 2017 at 9:08 AM, Martin Jansa <martin.jansa@gmail.com> wrote=
:

> Yes, Paul approach looks good to me, I think it was what was suggested in
> first replies to my SRCREV change and I agree with that, I just haven't h=
ad
> time to send updated patch.
>
> Paul if you have the patch ready please send it, thanks!.
>
> On Thu, Jun 1, 2017 at 8:10 AM, Paul Barker <pbarker@toganlabs.com> wrote=
:
>
>> On Thu, Jun 1, 2017 at 1:17 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> > On Wed, May 31, 2017 at 5:00 PM, Andrei Gherzan <andrei@gherzan.ro>
>> wrote:
>> >>
>> >> On Tue, May 30, 2017 at 6:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> >>>
>> >>> On Tue, May 30, 2017 at 10:25 AM, Andre McCurdy <armccurdy@gmail.com=
>
>> >>> wrote:
>> >>> > On Tue, May 30, 2017 at 10:15 AM, Paul Barker <
>> pbarker@toganlabs.com>
>> >>> > wrote:
>> >>> >> On 30 May 2017 5:08 p.m., "Khem Raj" <raj.khem@gmail.com> wrote:
>> >>> >>
>> >>> >> On Tue, May 30, 2017 at 12:57 AM, Martin Jansa <
>> martin.jansa@gmail.com>
>> >>> >> wrote:
>> >>> >>> * use latest revision in rpi-4.11.y branch
>> >>> >>> * using AUTOREV causes bitbake to run git ls-remote on the
>> github.com
>> >>> >>> repository in order
>> >>> >>>   to convert AUTOREV to currently latest SRCREV even when you
>> don't
>> >>> >>> use
>> >>> >>> linux-raspberrypi_dev
>> >>> >>>   at all, just happen to have meta-raspberrypi layer in your
>> >>> >>> bblayers.conf, that's bad for
>> >>> >>>   people who want to be able to build without network access
>> >>> >>> (completely
>> >>> >>> from premirror)
>> >>> >>>
>> >>> >>
>> >>> >> These branches get rebased often so locking SRCREV caused another
>> >>> >> kind of problem. what we can do is.
>> >>> >>
>> >>> >> 1. Let user like you override the SRCREC via a bbappend or conf
>> file.
>> >>> >> so change the assignment to ?=3D
>> >>> >> 2. Delete the recipe completely. We lose some of upstream testing=
.
>> >>> >>
>> >>> >> We should be able to skip the recipe if it isn't selected as the
>> >>> >> preferred
>> >>> >> version and/or provider of "virtual/kernel". I'm out at the minut=
e
>> so
>> >>> >> can't
>> >>> >> look at it now but will try to take a look later this week.
>> >>> >
>> >>> > The linux-yocto-dev.bb recipe contains an example of doing that.
>> >>> >
>> >>>
>> >>> ah perfect. Thats what we need here
>> >>>
>> >>>
>> >>> http://cgit.openembedded.org/openembedded-core/tree/meta/rec
>> ipes-kernel/linux/linux-yocto-dev.bb?h=3Dmaster#n28
>> >>>
>> >>> please rename the recipe to be linux-raspberrypi-dev.bb and add the
>> magic
>> >>> above and send a v2
>> >>>
>> >>
>> >> Using the magic above we still hardcode a revision there. So if a use=
r
>> wants
>> >> to compile the recipe without setting the preferred provider it will
>> fail.
>> >
>> > what will be the usecase ? when you have a different kernel selected b=
ut
>> > woould like to compile yet another kernel
>> >
>> > that rev can be a well known rev like branchpoint. Moreover, I think
>> > if someone wants to use the dev recipe then its expected that they
>> > switch
>> > to using AUTOREV or some other local mechanism for pinning if needed.
>> >
>>
>> I was thinking of a different approach entirerly. We can add the
>> following at the top of the recipe file:
>>
>> python __anonymous() {
>>     if "linux-raspberrypi-dev" not in
>> d.getVar("PREFERRED_PROVIDER_virtual/kernel"):
>>         msg =3D "Skipping linux-raspberrypi-dev as it is not the preferr=
ed
>> " + \
>>               "provider of virtual/kernel."
>>         raise bb.parse.SkipRecipe(msg)
>> }
>>
>> (Hopefully gmail won't mangle that too much)
>>
>> I've just tested it and it works fine as long as it's before the use
>> of ${AUTOREV}. If there's no objections to this approach I'll submit a
>> patch.
>>
>> Cheers,
>>
>> --
>> Paul Barker
>> Co-Founder & Principal Engineer
>> Tog=C3=A1n Labs Ltd
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--94eb2c089f0ae9bfc80550e0bba1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">And it&#39;s not clear from the diff you send, but like <a=
 href=3D"http://linux-yocto-dev.bb">linux-yocto-dev.bb</a> example above, t=
he recipe needs to be renamed from <a href=3D"http://linux-raspberrypi_dev.=
bb">linux-raspberrypi_dev.bb</a> to <a href=3D"http://linux-raspberrypi-dev=
.bb">linux-raspberrypi-dev.bb</a> to make it different provider.</div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jun 1, 2017 at=
 9:08 AM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa=
@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Yes, Paul approach looks=
 good to me, I think it was what was suggested in first replies to my SRCRE=
V change and I agree with that, I just haven&#39;t had time to send updated=
 patch.<div><br></div><div>Paul if you have the patch ready please send it,=
 thanks!.</div></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jun 1, 2017 at 8:10 AM,=
 Paul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:pbarker@toganlabs.com"=
 target=3D"_blank">pbarker@toganlabs.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div class=3D"m_54560129522142250HOEnZb"><div class=
=3D"m_54560129522142250h5">On Thu, Jun 1, 2017 at 1:17 AM, Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>=
&gt; wrote:<br>
&gt; On Wed, May 31, 2017 at 5:00 PM, Andrei Gherzan &lt;<a href=3D"mailto:=
andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tue, May 30, 2017 at 6:29 PM, Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, May 30, 2017 at 10:25 AM, Andre McCurdy &lt;<a href=3D=
"mailto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&gt;<=
br>
&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt; On Tue, May 30, 2017 at 10:15 AM, Paul Barker &lt;<a href=
=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@toganlabs.com</=
a>&gt;<br>
&gt;&gt;&gt; &gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt; On 30 May 2017 5:08 p.m., &quot;Khem Raj&quot; &lt;<a=
 href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a=
>&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; On Tue, May 30, 2017 at 12:57 AM, Martin Jansa &lt;<a=
 href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmai=
l.com</a>&gt;<br>
&gt;&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt; * use latest revision in rpi-4.11.y branch<br>
&gt;&gt;&gt; &gt;&gt;&gt; * using AUTOREV causes bitbake to run git ls-remo=
te on the <a href=3D"http://github.com" rel=3D"noreferrer" target=3D"_blank=
">github.com</a><br>
&gt;&gt;&gt; &gt;&gt;&gt; repository in order<br>
&gt;&gt;&gt; &gt;&gt;&gt;=C2=A0 =C2=A0to convert AUTOREV to currently lates=
t SRCREV even when you don&#39;t<br>
&gt;&gt;&gt; &gt;&gt;&gt; use<br>
&gt;&gt;&gt; &gt;&gt;&gt; linux-raspberrypi_dev<br>
&gt;&gt;&gt; &gt;&gt;&gt;=C2=A0 =C2=A0at all, just happen to have meta-rasp=
berrypi layer in your<br>
&gt;&gt;&gt; &gt;&gt;&gt; bblayers.conf, that&#39;s bad for<br>
&gt;&gt;&gt; &gt;&gt;&gt;=C2=A0 =C2=A0people who want to be able to build w=
ithout network access<br>
&gt;&gt;&gt; &gt;&gt;&gt; (completely<br>
&gt;&gt;&gt; &gt;&gt;&gt; from premirror)<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; These branches get rebased often so locking SRCREV ca=
used another<br>
&gt;&gt;&gt; &gt;&gt; kind of problem. what we can do is.<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; 1. Let user like you override the SRCREC via a bbappe=
nd or conf file.<br>
&gt;&gt;&gt; &gt;&gt; so change the assignment to ?=3D<br>
&gt;&gt;&gt; &gt;&gt; 2. Delete the recipe completely. We lose some of upst=
ream testing.<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; We should be able to skip the recipe if it isn&#39;t =
selected as the<br>
&gt;&gt;&gt; &gt;&gt; preferred<br>
&gt;&gt;&gt; &gt;&gt; version and/or provider of &quot;virtual/kernel&quot;=
. I&#39;m out at the minute so<br>
&gt;&gt;&gt; &gt;&gt; can&#39;t<br>
&gt;&gt;&gt; &gt;&gt; look at it now but will try to take a look later this=
 week.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; The <a href=3D"http://linux-yocto-dev.bb" rel=3D"noreferr=
er" target=3D"_blank">linux-yocto-dev.bb</a> recipe contains an example of =
doing that.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ah perfect. Thats what we need here<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; <a href=3D"http://cgit.openembedded.org/openembedded-core/tree=
/meta/recipes-kernel/linux/linux-yocto-dev.bb?h=3Dmaster#n28" rel=3D"norefe=
rrer" target=3D"_blank">http://cgit.openembedded.org/o<wbr>penembedded-core=
/tree/meta/rec<wbr>ipes-kernel/linux/linux-yocto-<wbr>dev.bb?h=3Dmaster#n28=
</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; please rename the recipe to be <a href=3D"http://linux-raspber=
rypi-dev.bb" rel=3D"noreferrer" target=3D"_blank">linux-raspberrypi-dev.bb<=
/a> and add the magic<br>
&gt;&gt;&gt; above and send a v2<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Using the magic above we still hardcode a revision there. So if a =
user wants<br>
&gt;&gt; to compile the recipe without setting the preferred provider it wi=
ll fail.<br>
&gt;<br>
&gt; what will be the usecase ? when you have a different kernel selected b=
ut<br>
&gt; woould like to compile yet another kernel<br>
&gt;<br>
&gt; that rev can be a well known rev like branchpoint. Moreover, I think<b=
r>
&gt; if someone wants to use the dev recipe then its expected that they<br>
&gt; switch<br>
&gt; to using AUTOREV or some other local mechanism for pinning if needed.<=
br>
&gt;<br>
<br>
</div></div>I was thinking of a different approach entirerly. We can add th=
e<br>
following at the top of the recipe file:<br>
<br>
python __anonymous() {<br>
=C2=A0 =C2=A0 if &quot;linux-raspberrypi-dev&quot; not in<br>
d.getVar(&quot;PREFERRED_PROVIDER_v<wbr>irtual/kernel&quot;):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 msg =3D &quot;Skipping linux-raspberrypi-dev as=
 it is not the preferred &quot; + \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;provider of virtual/=
kernel.&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise bb.parse.SkipRecipe(msg)<br>
}<br>
<br>
(Hopefully gmail won&#39;t mangle that too much)<br>
<br>
I&#39;ve just tested it and it works fine as long as it&#39;s before the us=
e<br>
of ${AUTOREV}. If there&#39;s no objections to this approach I&#39;ll submi=
t a<br>
patch.<br>
<br>
Cheers,<br>
<span class=3D"m_54560129522142250HOEnZb"><font color=3D"#888888"><br>
--<br>
Paul Barker<br>
Co-Founder &amp; Principal Engineer<br>
Tog=C3=A1n Labs Ltd<br>
</font></span><div class=3D"m_54560129522142250HOEnZb"><div class=3D"m_5456=
0129522142250h5">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--94eb2c089f0ae9bfc80550e0bba1--
