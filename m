Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B9AAE00DFB; Tue,  6 Mar 2018 13:04:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2BACE00823
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 13:04:02 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id u84so524934iod.9
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 13:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6pHz/g9aqA3ZpLnok+fBxXL1IQ5HJtpsFm68ZKe4wzM=;
	b=Wpa2YEDBubn2VvF28ALd/nCuQ9GHHhWoSLRM27wPopD69ZPLejptCFr90w8PPZMPti
	L3uVd+0zg1xTRzh891UupRvzRqwk7rDEyJzWwNCgfMfWGRlUngS2j3fxRGetlhxT9hok
	x/QnrFX2sQBJqURAGhqaTtzo+cYmPknIgd0M1qD+euodVunlgUGFqcYwWOZJBOgr8bdt
	iz8kVzunu2PzjzQdvB4TBLQ+ihP/wDEDaZSobk3V4KvhjViZxJYK3/48MhuBdSQqYXDx
	OC31VV/JZ8qSHGbeBPV67BJvNhe4VEWVqVX0nqFHTzoEFMdX88BFCzoJVFcsD8pTHwpT
	RSmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6pHz/g9aqA3ZpLnok+fBxXL1IQ5HJtpsFm68ZKe4wzM=;
	b=IVkeWfSohBnWxEISKda8P47s0GMBc4TWR+b1PazBQAHsZtkXvoHuahPXVKVnBOYRIy
	JzInfkSh0lCmz2aemjrOynZJfUvF6pmtCkYUPZdWFqJ2wUxS0UGHAw3WPT7e4H1t53K+
	w9VhRitBf6X7yPPyrGpMg7/Khjikskd8Qh1FeqwV+KfnNh3S0WgYPFcNoS71PYCI7/8y
	Bm4MkpsGP+Zsy6EF2gzBtEJJmv36JEVN6MsFxTA9hv/JgEOJwa8DBaZJFCnpGIJtvCgx
	sERYbO/VNMIUaUN+snywRckrhjF6pALg2MHEQBRsgvqccNphTbIgXU7WkAMIhvRCTImD
	cMQw==
X-Gm-Message-State: APf1xPBmWbtk6bFOjzO6IFk6zMw9rjb44xDIa4+FCSvkAXuhlWaPc/l0
	pOn/kCQkjqoVKSgo2VWEEO4el0RPUogrv4gtZBQujg==
X-Google-Smtp-Source: AG47ELt0I9gLLW1DpV5cxgX0gYWwTTQGhq/zp7RMEBBmzvOEVSMSlc4MTa+ribrOqqSOvABkCJhvZAfEFVam5eDOC0o=
X-Received: by 10.107.164.3 with SMTP id n3mr21563819ioe.88.1520370241817;
	Tue, 06 Mar 2018 13:04:01 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
	<CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
	<CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
	<CAJTo0LbfEoJiMg1paTsFjojSBZnWFgUycw8b_qtxOzWuvMwhsQ@mail.gmail.com>
	<CAFzUWGmFW4==kSeUOXT_OXGAW-geRbJsYiLQL+Wd6Ath45a5hg@mail.gmail.com>
	<CAJTo0LaWRz0ku=ESyTghyCnS5rVuo70K88VhL76AQcX2kbf_BQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaWRz0ku=ESyTghyCnS5rVuo70K88VhL76AQcX2kbf_BQ@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 06 Mar 2018 21:03:51 +0000
Message-ID: <CAFzUWGkBGD__BLGC2RXwbo6npoqMT7krRPseT1Ax-9H9PNmVJQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 21:04:03 -0000
Content-Type: multipart/alternative; boundary="001a1141de6a30dbf10566c4c8e0"

--001a1141de6a30dbf10566c4c8e0
Content-Type: text/plain; charset="UTF-8"

Yes. The CMakeLists file definitely doesn't install that (annoyingly).
Playing around a bit, I created a test recipe, added these lines in my
open62541.inc file (original recipe here)

do_install_append() {
  install -d ${D}${includedir}
  install -m 644 ${B}/open62541.h ${D}${includedir}
}

FILES_${PN}_append = "${includedir}/open62541.h"

and it looks like the test recipe can pick up that header file correctly.
So I think this is correct-er (at least for code that uses #include
<open62541.h>).

Thanks for all the feedback so far,

Giordon

On Tue, Mar 6, 2018 at 3:00 PM Burton, Ross <ross.burton@intel.com> wrote:

> If the cmakelists file doesn't install that (and it should) then yes
> you'll need to use do_install_append.
>
> Ross
>
> On 6 March 2018 at 20:46, Giordon Stark <kratsg@gmail.com> wrote:
>
>> Great. So when I have this recipe set up -- how do I make sure, or tell
>> other people who write a recipe depending on this -- how to find a header
>> file built by it?
>>
>> Specifically, I see this header file in a (non-standard?) location which
>> is normally linked by others:
>>
>> |  #include <open62541.h>
>>
>> and this header file is at ${B}/open62541.h
>> (tmp/work/aarch64-poky-linux/open62541/0.3-r0/build/open62541.h). Is
>> this something that I just handle with a `do_install_append()` line? The
>> documentation here
>> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html isn't
>> very clear to me.
>>
>> e.g. for another recipe that just adds "open62541" in it's DEPENDS.
>>
>> Giordon
>>
>> On Tue, Mar 6, 2018 at 2:32 PM Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>> On 6 March 2018 at 20:24, Giordon Stark <kratsg@gmail.com> wrote:
>>>
>>>> You can drop the S assignment as that is the default value.
>>>>>
>>>>
>>>> Didn't realize, neat. I knew I needed to set it for `git` clones since
>>>> it always throws it into a ${WORKDIR}/git folder.
>>>>
>>>
>>> Yes, for git clones you need to override it.
>>>
>>>
>>>>
>>>>> Github /archive/ tarballs can and do change over time, which gets very
>>>>> annoying when you need to go and change the checksums.
>>>>>
>>>>
>>>> Really? Dang...
>>>>
>>>
>>> Yeah. :/  Took us ages to verify this happens but it definitely does.
>>>
>>>
>>>> My hunch without reading the upstream CMake files is that they don't
>>>>> support out-of-tree builds.  If it worked from git then that's another
>>>>> reason to switch back.
>>>>>
>>>>
>>>> It seems like this is the case here. I'm ok using git clones for now.
>>>> Thanks.
>>>>
>>>
>>> It *shouldn't* matter here as the /archive/ tarball should have
>>> identical contents to a clone of the same tag, but it's possible that the
>>> build system looks for a .git/ directory and changes how it builds.  That's
>>> kind of stupid but it wouldn't be the first time I've seen it break builds.
>>>
>>> Ross
>>>
>> --
>> Giordon Stark
>>
>
> --
Giordon Stark

--001a1141de6a30dbf10566c4c8e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes. The CMakeLists file definitely doesn&#39;t install th=
at (annoyingly). Playing around a bit, I created a test recipe, added these=
 lines in my open62541.inc file (original recipe here)<div><div><br></div><=
div><font face=3D"monospace">do_install_append() {</font></div><div><font f=
ace=3D"monospace">=C2=A0 install -d ${D}${includedir}</font></div><div><fon=
t face=3D"monospace">=C2=A0 install -m 644 ${B}/open62541.h ${D}${includedi=
r}</font></div><div><font face=3D"monospace">}</font></div><div><font face=
=3D"monospace"><br></font></div><div><font face=3D"monospace">FILES_${PN}_a=
ppend =3D &quot;${includedir}/open62541.h&quot;</font></div><div><br></div>=
<div>and it looks like the test recipe can pick up that header file correct=
ly. So I think this is correct-er (at least for code that uses <font face=
=3D"monospace">#include &lt;open62541.h&gt;</font>).</div></div><div><br></=
div><div>Thanks for all the feedback so far,</div><div><br></div><div>Giord=
on</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 6=
, 2018 at 3:00 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com"=
>ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr">If the cmakelists file doesn&#39;t install that (and it=
 should) then yes you&#39;ll need to use do_install_append.</div><div dir=
=3D"ltr"><div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On 6 March 2018 at 20:46, Giordon Stark <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_blank">kratsg=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">Great. So when I have this recipe set up -- how do I make sure, or=
 tell other people who write a recipe depending on this -- how to find a he=
ader file built by it?<div><br></div><div>Specifically, I see this header f=
ile in a (non-standard?) location which is normally linked by others:</div>=
<div><br></div><div><div>|=C2=A0 #include &lt;open62541.h&gt;</div></div><d=
iv><br></div><div>and this header file is at <font face=3D"monospace">${B}/=
open62541.h (tmp/work/aarch64-poky-linux/open62541/0.3-r0/build/open62541.h=
)</font>. Is this something that I just handle with a `do_install_append()`=
 line? The documentation here=C2=A0<a href=3D"https://www.yoctoproject.org/=
docs/current/dev-manual/dev-manual.html" target=3D"_blank">https://www.yoct=
oproject.org/docs/current/dev-manual/dev-manual.html</a>=C2=A0isn&#39;t ver=
y clear to me.</div><div><br></div><div>e.g. for another recipe that just a=
dds &quot;<font face=3D"monospace">open62541</font>&quot; in it&#39;s <font=
 face=3D"monospace">DEPENDS</font>.</div><div><br></div><div>Giordon</div><=
/div><div class=3D"m_-3201072459178857337HOEnZb"><div class=3D"m_-320107245=
9178857337h5"><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 6=
, 2018 at 2:32 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com"=
 target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr">On 6 March 2018 at 20:24, Giordon Sta=
rk <span dir=3D"ltr">&lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_bla=
nk">kratsg@gmail.com</a>&gt;</span> wrote:<br></div><div dir=3D"ltr"><div c=
lass=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><span><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_q=
uote"><div>You can drop the S assignment as that is the default value.</div=
></div></div></div></blockquote><div><br></div></span><div>Didn&#39;t reali=
ze, neat. I knew I needed to set it for `git` clones since it always throws=
 it into a ${WORKDIR}/git folder.</div></div></div></blockquote><div><br></=
div></div></div></div><div dir=3D"ltr"><div class=3D"gmail_extra"><div clas=
s=3D"gmail_quote"><div>Yes, for git clones you need to override it.</div></=
div></div></div><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"g=
mail_quote"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
"><div class=3D"gmail_quote"><span><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div><br></d=
iv><div>Github /archive/ tarballs can and do change over time, which gets v=
ery annoying when you need to go and change the checksums.</div></div></div=
></div></blockquote><div><br></div></span><div>Really? Dang...</div></div><=
/div></blockquote><div><br></div></div></div></div><div dir=3D"ltr"><div cl=
ass=3D"gmail_extra"><div class=3D"gmail_quote"><div>Yeah. :/ =C2=A0Took us =
ages to verify this happens but it definitely does.</div></div></div></div>=
<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"=
gmail_quote"><span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><div class=3D"gmail_quote"><div>My hunch without reading=
 the upstream CMake files is that they don&#39;t support out-of-tree builds=
.=C2=A0 If it worked from git then that&#39;s another reason to switch back=
.=C2=A0</div></div></div></div></blockquote><div><br></div></span><div>It s=
eems like this is the case here. I&#39;m ok using git clones for now. Thank=
s.</div></div></div></blockquote><div><br></div></div></div></div><div dir=
=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div>It *sho=
uldn&#39;t* matter here as the /archive/ tarball should have identical cont=
ents to a clone of the same tag, but it&#39;s possible that the build syste=
m looks for a .git/ directory and changes how it builds.=C2=A0 That&#39;s k=
ind of stupid but it wouldn&#39;t be the first time I&#39;ve seen it break =
builds.</div></div></div></div><div dir=3D"ltr"><div class=3D"gmail_extra">=
<div class=3D"gmail_quote"><div><br></div><div>Ross</div></div></div></div>=
</blockquote></div></div></div><span class=3D"m_-3201072459178857337HOEnZb"=
><font color=3D"#888888">-- <br><div dir=3D"ltr" class=3D"m_-32010724591788=
57337m_-5765771507955939441gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr">Giordon Stark</div></div>
</font></span></blockquote></div><br></div>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--001a1141de6a30dbf10566c4c8e0--
