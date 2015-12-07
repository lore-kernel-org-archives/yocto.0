Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 548FFE00956; Mon,  7 Dec 2015 14:17:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCB44E006F3
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 14:17:29 -0800 (PST)
Received: by vkha189 with SMTP id a189so884774vkh.2
	for <yocto@yoctoproject.org>; Mon, 07 Dec 2015 14:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=oaPiHDtpox7bzQnEzRRYwHDanreXy7a8YYz4axTVKsQ=;
	b=i9rWvK2+7mzWzjzMSrluf05pP3Xpbyz9v9OyMo7ClIw69Tv0IikRvBvNY2+MQCwdpG
	J7TalhtMX4V4y6V+H2lPc8ie9ePl1o2zDLcv4xkZ9LGMdMISOcLPCtcOK5mTfPLyVyRw
	XHjuXAkl4cvk2hpdc3PlE2KmTwHKKgKNGqK+a4BU1iMvVQSSBSZNHL6PUemuV/J/3p1t
	ql+Amy6QuOcufjOFvbyQ2V+46kCrFPMMLJ2nkRIrvbefZCuAm4QGD8UZrFRGv0GYxd6h
	7DUVO95OCWWI2c302tDRxa09V1tE9OayLJgUAkBEwJqma+CJhHR2iOmaibArhltz4D9n
	6Zaw==
MIME-Version: 1.0
X-Received: by 10.31.48.11 with SMTP id w11mr119747vkw.114.1449526648429; Mon,
	07 Dec 2015 14:17:28 -0800 (PST)
Received: by 10.31.202.196 with HTTP; Mon, 7 Dec 2015 14:17:28 -0800 (PST)
In-Reply-To: <565D2EFE.4040508@windriver.com>
References: <1448515549-24417-1-git-send-email-rongqing.li@windriver.com>
	<565BDCFD.5060103@windriver.com> <565CF306.3050300@windriver.com>
	<565D2EFE.4040508@windriver.com>
Date: Mon, 7 Dec 2015 17:17:28 -0500
Message-ID: <CADkTA4PXky0cH+QGP=nDAHcDvSRJ5qE5-ReHo98=_2vYRWyV9Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Rongqing Li <rongqing.li@windriver.com>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-kernel-cache] netfilter: enable several netfilter options
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
X-List-Received-Date: Mon, 07 Dec 2015 22:17:33 -0000
Content-Type: multipart/alternative; boundary=001a1143e728f8e2a505265638e5

--001a1143e728f8e2a505265638e5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 1, 2015 at 12:24 AM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 2015-11-30 8:08 PM, Rongqing Li wrote:
>
>>
>>
>> On 2015=E5=B9=B411=E6=9C=8830=E6=97=A5 13:22, Bruce Ashfield wrote:
>>
>>> On 2015-11-26 12:25 AM, rongqing.li@windriver.com wrote:
>>>
>>>> From: Roy Li <rongqing.li@windriver.com>
>>>>
>>>> the below kernel options are enabled:
>>>>      LOG target support
>>>>      IPv6 connection tracking support,
>>>>      "addrtype" address type match support
>>>>      "recent" match support
>>>>
>>>> the default configuration of ufw(Uncomplicated Firewall) asked them.
>>>>
>>>
>>> Like the other patch you submitted, this should go to the linux-yocto
>>> list, but I'll reply here, since this one needs a bit more tweaking.
>>>
>>>
>>>> Signed-off-by: Roy Li <rongqing.li@windriver.com>
>>>> ---
>>>>   features/netfilter/netfilter.cfg | 4 ++++
>>>>   1 file changed, 4 insertions(+)
>>>>
>>>> diff --git a/features/netfilter/netfilter.cfg
>>>> b/features/netfilter/netfilter.cfg
>>>> index 8ecef4a..7bb8490 100644
>>>> --- a/features/netfilter/netfilter.cfg
>>>> +++ b/features/netfilter/netfilter.cfg
>>>> @@ -62,12 +62,16 @@ CONFIG_NETFILTER_XT_MATCH_STATISTIC=3Dm
>>>>   CONFIG_NETFILTER_XT_MATCH_STRING=3Dm
>>>>   CONFIG_NETFILTER_XT_MATCH_TCPMSS=3Dm
>>>>   CONFIG_NETFILTER_XT_MATCH_U32=3Dm
>>>> +CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=3Dm
>>>> +CONFIG_NETFILTER_XT_MATCH_RECENT=3Dm
>>>> +CONFIG_NETFILTER_XT_TARGET_LOG=3Dm
>>>>
>>>
>>> Adding these are fine, but if ufw needs these extra options, we should
>>> also have a ufw.scc/.cfg fragment that can be triggered when ufw is
>>> being built.
>>>
>>> So either create that fragment and inside it, document the NF options
>>> it needs, and have ufw include netfilter.scc to get the options you
>>> are adding above.
>>>
>>> or .. at the very least, put comments in the .cfg file above the
>>> options indicating that they are required for ufw.
>>>
>>
>> I think the below two configurations are more basic, not special to
>> ufw, and netfiler.cfg lost them.
>> CONFIG_NETFILTER_XT_TARGET_LOG=3Dm
>> CONFIG_NF_CONNTRACK_IPV6=3Dm
>>
>
> Sure, but we still don't have anything within the fragments or
> their descriptions that document what ufw is looking for, which
> means we could remove them in the feature and unknowingly break
> that functionality.
>
> You can still add those options to the netfilter config, but we'd
> be wise to add those comments, or create a ufw.scc file that (for
> now), simply includes netfilter.scc and indicates that ufw requires
> the options as they are in that config.
>

ping.

And just so we are clear, I didn't merge this yet, and it should be
re-submitted
to the linux-yocto mailing list with the comments addressed.

Cheers,

Bruce


>
> Bruce
>
>
>>
>> since this change has entered wrlinux kernel cache, I hope we do not
>> add the comment on .cfg
>>
>>
>> -Roy
>>
>>
>>
>>
>>> Bruce
>>>
>>>
>>>>   #
>>>>   # IP: Netfilter Configuration
>>>>   #
>>>>   CONFIG_NF_DEFRAG_IPV4=3Dm
>>>>   CONFIG_NF_CONNTRACK_IPV4=3Dm
>>>> +CONFIG_NF_CONNTRACK_IPV6=3Dm
>>>>   CONFIG_NF_CONNTRACK_PROC_COMPAT=3Dy
>>>>   CONFIG_IP_NF_IPTABLES=3Dm
>>>>   CONFIG_IP_NF_MATCH_AH=3Dm
>>>>
>>>>
>>>
>>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a1143e728f8e2a505265638e5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Dec 1, 2015 at 12:24 AM, Bruce Ashfield <span dir=3D"ltr">&lt;<=
a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashf=
ield@windriver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div class=3D"HOEnZb"><div class=3D"h5">On 2015-11-30 8:08 PM, Rongqing Li =
wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
On 2015=E5=B9=B411=E6=9C=8830=E6=97=A5 13:22, Bruce Ashfield wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 2015-11-26 12:25 AM, <a href=3D"mailto:rongqing.li@windriver.com" target=
=3D"_blank">rongqing.li@windriver.com</a> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
From: Roy Li &lt;<a href=3D"mailto:rongqing.li@windriver.com" target=3D"_bl=
ank">rongqing.li@windriver.com</a>&gt;<br>
<br>
the below kernel options are enabled:<br>
=C2=A0 =C2=A0 =C2=A0LOG target support<br>
=C2=A0 =C2=A0 =C2=A0IPv6 connection tracking support,<br>
=C2=A0 =C2=A0 =C2=A0&quot;addrtype&quot; address type match support<br>
=C2=A0 =C2=A0 =C2=A0&quot;recent&quot; match support<br>
<br>
the default configuration of ufw(Uncomplicated Firewall) asked them.<br>
</blockquote>
<br>
Like the other patch you submitted, this should go to the linux-yocto<br>
list, but I&#39;ll reply here, since this one needs a bit more tweaking.<br=
>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Signed-off-by: Roy Li &lt;<a href=3D"mailto:rongqing.li@windriver.com" targ=
et=3D"_blank">rongqing.li@windriver.com</a>&gt;<br>
---<br>
=C2=A0 features/netfilter/netfilter.cfg | 4 ++++<br>
=C2=A0 1 file changed, 4 insertions(+)<br>
<br>
diff --git a/features/netfilter/netfilter.cfg<br>
b/features/netfilter/netfilter.cfg<br>
index 8ecef4a..7bb8490 100644<br>
--- a/features/netfilter/netfilter.cfg<br>
+++ b/features/netfilter/netfilter.cfg<br>
@@ -62,12 +62,16 @@ CONFIG_NETFILTER_XT_MATCH_STATISTIC=3Dm<br>
=C2=A0 CONFIG_NETFILTER_XT_MATCH_STRING=3Dm<br>
=C2=A0 CONFIG_NETFILTER_XT_MATCH_TCPMSS=3Dm<br>
=C2=A0 CONFIG_NETFILTER_XT_MATCH_U32=3Dm<br>
+CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=3Dm<br>
+CONFIG_NETFILTER_XT_MATCH_RECENT=3Dm<br>
+CONFIG_NETFILTER_XT_TARGET_LOG=3Dm<br>
</blockquote>
<br>
Adding these are fine, but if ufw needs these extra options, we should<br>
also have a ufw.scc/.cfg fragment that can be triggered when ufw is<br>
being built.<br>
<br>
So either create that fragment and inside it, document the NF options<br>
it needs, and have ufw include netfilter.scc to get the options you<br>
are adding above.<br>
<br>
or .. at the very least, put comments in the .cfg file above the<br>
options indicating that they are required for ufw.<br>
</blockquote>
<br>
I think the below two configurations are more basic, not special to<br>
ufw, and netfiler.cfg lost them.<br>
CONFIG_NETFILTER_XT_TARGET_LOG=3Dm<br>
CONFIG_NF_CONNTRACK_IPV6=3Dm<br>
</blockquote>
<br></div></div>
Sure, but we still don&#39;t have anything within the fragments or<br>
their descriptions that document what ufw is looking for, which<br>
means we could remove them in the feature and unknowingly break<br>
that functionality.<br>
<br>
You can still add those options to the netfilter config, but we&#39;d<br>
be wise to add those comments, or create a ufw.scc file that (for<br>
now), simply includes netfilter.scc and indicates that ufw requires<br>
the options as they are in that config.<span class=3D"HOEnZb"><font color=
=3D"#888888"><br></font></span></blockquote><div><br></div><div>ping.<br><b=
r></div><div>And just so we are clear, I didn&#39;t merge this yet, and it =
should be re-submitted<br></div><div>to the linux-yocto mailing list with t=
he comments addressed.<br></div><div><br></div><div>Cheers,<br><br></div><d=
iv>Bruce<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"HOEnZb"><font color=3D"#888888">
<br>
Bruce</font></span><span class=3D"im HOEnZb"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
since this change has entered wrlinux kernel cache, I hope we do not<br>
add the comment on .cfg<br>
<br>
<br>
-Roy<br>
<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
=C2=A0 #<br>
=C2=A0 # IP: Netfilter Configuration<br>
=C2=A0 #<br>
=C2=A0 CONFIG_NF_DEFRAG_IPV4=3Dm<br>
=C2=A0 CONFIG_NF_CONNTRACK_IPV4=3Dm<br>
+CONFIG_NF_CONNTRACK_IPV6=3Dm<br>
=C2=A0 CONFIG_NF_CONNTRACK_PROC_COMPAT=3Dy<br>
=C2=A0 CONFIG_IP_NF_IPTABLES=3Dm<br>
=C2=A0 CONFIG_IP_NF_MATCH_AH=3Dm<br>
<br>
</blockquote>
<br>
<br>
</blockquote>
<br>
</blockquote>
<br>
-- <br></span><div class=3D"HOEnZb"><div class=3D"h5">
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature">&quot;Thou shalt not follow the NULL pointer, for chao=
s and madness await thee at its end&quot;</div>
</div></div>

--001a1143e728f8e2a505265638e5--
