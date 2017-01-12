Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6920AE0034A; Thu, 12 Jan 2017 09:39:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.177 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C851E0030B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 09:39:33 -0800 (PST)
Received: by mail-qk0-f177.google.com with SMTP id s140so28401815qke.0
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 09:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9F0bDxlToJupOI0F8XrryLWCYKMZCHshqTDDIYIChDo=;
	b=JFDIpLstGgNmtmuM3gL/FrXOaKAbNYGQY6yViU9MSAMMki3sWGT9feUFAjO0TKvptI
	FFRpHH80T49SfX9koXyyvaeOAxkm7mEczmq5NCYB2QCQ9Vzjqa1du6GE8ChiyNzHcks4
	INmELZ8xxMnwbpOG3Ly2ds5pg17I57baUfbJgSEgZAgpIdJjvG2/3vR2NiB5G/ScEZU+
	EF5XzgTbyk0pocqfeSl1d7uVOge/HxD9wvjUXgMZY3sS/wevqe1j8xwzl9Liju/OcVLu
	UMMdK0n5hy8rgUvkzM19K7Zp3fVXeNECCz97lgZlOGQt1Z1Wb3/ej4o7PV4HEGe6qBEs
	UHEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9F0bDxlToJupOI0F8XrryLWCYKMZCHshqTDDIYIChDo=;
	b=txAgDYwu0qe3CArRlONVQKkI+EC12rJvETlR51UVjoinXYanq460ex/g3CLW8V2KWh
	jJAzES37XR1bRiTgpW4SmP+OrTIx01JNyqsAk1J5kNH0mitLXB0SSDIsr7pZC/ltNDuw
	M+J2FYhGPyingsw9nsa07hR+xcerl5c3F5P1EXo/g2e8SMfFiSCrBigkBQ28F5lc0XNL
	mB9z+1t6TjpbdZYiXd8blDHIAhj00xQKgn0CPni7z0Er8hrChw0fq3GkOzwtHhqo3pEZ
	r4wbu6D1F2bqBa47CiC3oqh4NJ/i6qD9KU61cTL4jvB+vxVLAAaT2vZeNbXHlxMFpF3v
	4cHg==
X-Gm-Message-State: AIkVDXKK0DG5HRYarOwxAG8NAvYj7MSTC6KGZPltFapPJf7cop552hF7X4+QLsItEOB4bOVnv8+8HGq+Aq9KMinA
X-Received: by 10.55.47.4 with SMTP id v4mr14375011qkh.77.1484242773147; Thu,
	12 Jan 2017 09:39:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Thu, 12 Jan 2017 09:39:12 -0800 (PST)
In-Reply-To: <bb9a299e3834488f8c033f7e07515afe@svr-orw-mbx-01.mgc.mentorg.com>
References: <c93f2baf-e05d-fc8a-0789-9651dc5a1fd4@balister.org>
	<2377449.YFeu6CDXkj@peggleto-mobl.ger.corp.intel.com>
	<bb9a299e3834488f8c033f7e07515afe@svr-orw-mbx-01.mgc.mentorg.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jan 2017 17:39:12 +0000
Message-ID: <CAJTo0LajcqeYxpN6HeKpAzwBReHq0Zp0QNd8w-mCy2vu9iuWKQ@mail.gmail.com>
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Subject: Re: [oe] [Openembedded-architecture] OpenEmbedded Developers Meeting in Portland before ELC
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
X-List-Received-Date: Thu, 12 Jan 2017 17:39:36 -0000
Content-Type: multipart/alternative; boundary=001a114f41084115830545e93326

--001a114f41084115830545e93326
Content-Type: text/plain; charset=UTF-8

On 12 January 2017 at 14:18, Hudson, Sean <Sean_Hudson@mentor.com> wrote:

>   It's a great point.  I have volunteered Mentor's teleconference, but the
> onsite pickup is always a challenge.  Once we've finalized the location,
> I'll focus on making sure that we have a high quality pickup(s) in the
> room.  If possible, I'll get a true video-conference setup.
>

Definitely plural!  A conference phone with a number of microphones dotted
around the room seems to be a sensible idea.

Ross

--001a114f41084115830545e93326
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 January 2017 at 14:18, Hudson, Sean <span dir=3D"ltr">&lt;<a href=3D"=
mailto:Sean_Hudson@mentor.com" target=3D"_blank">Sean_Hudson@mentor.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":tb" class=
=3D"a3s aXjCH m159930bae17bde88">=C2=A0 It&#39;s a great point.=C2=A0 I hav=
e volunteered Mentor&#39;s teleconference, but the onsite pickup is always =
a challenge.=C2=A0 Once we&#39;ve finalized the location, I&#39;ll focus on=
 making sure that we have a high quality pickup(s) in the room.=C2=A0 If po=
ssible, I&#39;ll get a true video-conference setup.<br></div></blockquote><=
/div><br>Definitely plural!=C2=A0 A conference phone with a number of micro=
phones dotted around the room seems to be a sensible idea.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114f41084115830545e93326--
