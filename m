Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50B71E00A53; Thu,  2 Mar 2017 08:00:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87996E00A48
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 08:00:01 -0800 (PST)
Received: by mail-qk0-f182.google.com with SMTP id 1so11246462qkl.3
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 08:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=er8yKVo30FoEAGhhnc0Rze/KJ44Kj0eKISHDSh4r5+Q=;
	b=w6mkU7+bWSofIph7p0ShkxafjIGjkXcqYdY+fO9dE4bw/JCMQSE0Ll63BoGgL0lse+
	0jt3opx66CIpgwR04C6cIN7FGeEHOosOfBMccYFQkflWaOPekW8vQgywDE/xn11l0EO0
	lS+LgmJFnhtcHWiB7f71xki43jZLZFZje2EorK3sQHJELw0e77Fy7ByEt0Wyajuejaah
	vtcZt3ctrwU1jMQIuBr0wFcPUqfLS7DI9J/wXI0tmw+guQ1JJ/755EXCm3aD/9gyfJgW
	gIu/UmNVF4ZdMGcSFjsW6YaKjtCJ+MyjPvridiAhUneVDA9gv0Eggh0oEczoZtbPdt57
	UP2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=er8yKVo30FoEAGhhnc0Rze/KJ44Kj0eKISHDSh4r5+Q=;
	b=S+dEcvwdvQF7ROCHLuQXWU9UMKaFIgH353q8zud3id4gmzKY9BIhhJvHq09N8kKIMK
	0jRf7TCmbn3d6xiqhngzHNDoNh+E9+133pm+fy03LfvHbEyr9RUyespIhN9GnS+AOa4Q
	x0k96M9QvbKkV8GG/LVuJP5cU0uKhw3CgZhs+Br4oSm7WSZ4pmMLMaZZrzzpygmyIgwA
	47F4jzRzrxsKSTtMragFASwgaGBHS2j17fd8nLE73OAkq7B3cFOHxzCZ6h76dL22mn7N
	AnprkH4S+auefq9CV7mzcY2Dq9LVr97u7tTUhx0/vivHpCU5dai1ZfRPME5vqjlRx05G
	ox3Q==
X-Gm-Message-State: AMke39my6WY9hu8B09TPw6PdflF2EnE8+G47E1/D2S+k6FHayXEGh6pTqsXKaH9g8Q0tfNsjFPw6VbHy339qdoKa
X-Received: by 10.55.3.151 with SMTP id 145mr16949939qkd.244.1488470401183;
	Thu, 02 Mar 2017 08:00:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Thu, 2 Mar 2017 07:59:40 -0800 (PST)
In-Reply-To: <1488469685.28256.36.camel@linux.intel.com>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Mar 2017 15:59:40 +0000
Message-ID: <CAJTo0LaMG1Hvf+BmSDCY86j_yXvKZWatTRZCwH7fPnGhOebmFA@mail.gmail.com>
To: SatyaNarayana Sampangi <satya.2891@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Devtool: Script Not found
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
X-List-Received-Date: Thu, 02 Mar 2017 16:00:10 -0000
Content-Type: multipart/alternative; boundary=94eb2c0b93a08631280549c18523

--94eb2c0b93a08631280549c18523
Content-Type: text/plain; charset=UTF-8

On 2 March 2017 at 15:48, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> > I am not finding the devtool script under the
> > /${HOME}/yocto/poky/scripts, so I copied that script from the website
> > and changed the permissions.
>

If you don't have devtool under scripts/ then you most likely have an old
release which doesn't have devtool.  The scripts/devtool file is basically
just one of many files that you'll need, and I don't think it would be at
all easy to copy-and-paste devtool from master to a very old release.

If you want to use devtool, please upgrade your poky.

Ross

--94eb2c0b93a08631280549c18523
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 March 2017 at 15:48, Leonardo Sandoval <span dir=3D"ltr">&lt;<a href=
=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com" target=3D"_blank">le=
onardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div id=3D":14c" class=3D"a3s aXjCH m15a8fb50fa1d386a=
">&gt; I am not finding the devtool script under the<br>
&gt; /${HOME}/yocto/poky/scripts, so I copied that script from the website<=
br>
&gt; and changed the permissions.</div></blockquote></div><br>If you don&#3=
9;t have devtool under scripts/ then you most likely have an old release wh=
ich doesn&#39;t have devtool.=C2=A0 The scripts/devtool file is basically j=
ust one of many files that you&#39;ll need, and I don&#39;t think it would =
be at all easy to copy-and-paste devtool from master to a very old release.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If yo=
u want to use devtool, please upgrade your poky.</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c0b93a08631280549c18523--
