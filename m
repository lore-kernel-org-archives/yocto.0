Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EA88E00A5B; Wed, 17 Jun 2015 12:30:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49CA5E009C5
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 12:30:21 -0700 (PDT)
Received: by qgal13 with SMTP id l13so18903780qga.3
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 12:30:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=grQcgvp1AxTlT5lkWS7SWBOlokVXjPxZxUnpbpD4T+c=;
	b=O3I9EibA9/cdgNcp7WxW+xZS7n68NOzRv1M2HP2fuyje9KZs+49Vt0u18wXEvK0hMW
	kfxk0FBuNynYHYZreol96TOWNZHV1juxTXmNLLFKzpjxW5RQHhMg7xI1VgNUFnWWYmHe
	hk4ReWTdgxjgRx+lgDrKi0gYpas0Hh+PRop4r/cTZNgx02ffdpPC58mSzdZ5kVbIee/L
	OysY44gOAZ48vg17cnfDjRuoHPchocXi0YFHObjMky+Yz6MoYKASI7cIF4RAkcScrc/Y
	qvCnOJgeyqHcbKdMdnpOooi46nk6FTu8XIZ0cPD/5QiGZfXozP1Lr4DA9B7y5fWLBefs
	piww==
X-Gm-Message-State: ALoCoQnDL9ziSso8vz6JVRqa8bq1H5iq/vQBkeeFfTE68cvzIsASJEgtnfOFokajWT2YdnhiZvSB
X-Received: by 10.55.25.150 with SMTP id 22mr16622173qkz.105.1434569421480;
	Wed, 17 Jun 2015 12:30:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Wed, 17 Jun 2015 12:30:01 -0700 (PDT)
In-Reply-To: <CAFQ+Dij3q-k0eakxRoE5sq+sTwPv-r+K_YKF_qW7ai8VpY3uCg@mail.gmail.com>
References: <CAFQ+Dij3q-k0eakxRoE5sq+sTwPv-r+K_YKF_qW7ai8VpY3uCg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Jun 2015 20:30:01 +0100
Message-ID: <CAJTo0LZeTK52R3S6wX5yzKDHfkFRupAfsZn4gEeS24ZtHVZ-Ww@mail.gmail.com>
To: Marco Cavallini <cavallini.koan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: No rule to make target `Makefile.in' SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux', ...]
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
X-List-Received-Date: Wed, 17 Jun 2015 19:30:26 -0000
Content-Type: multipart/alternative; boundary=001a1147b3b0c5f78c0518bbb82e

--001a1147b3b0c5f78c0518bbb82e
Content-Type: text/plain; charset=UTF-8

On 17 June 2015 at 16:56, Marco Cavallini <cavallini.koan@gmail.com> wrote:

> Hello,
> I'm trying to create a recipe rdesktop_1.8.3.bb but I get an error
> hard to understand.
> With Yocto 'daisy' the same recipe worked without complaining.
> To avoid any temporary misconfiguraton I deleted the sstate and tmp
> and rebuilt core-image-minimal from scratch and then rdesktop but the
> error is always present.
> I'd like to know what is wrong with inherit autotools now using
> 'dizzy' and what is this DEBUG: SITE files ['endian-little', 'bit-32',
> 'arm-common', 'common-linux', 'common-glibc', 'arm-linux',
> 'arm-linux-gnueabi', 'common']
>

Compile is failing because configure failed to generate the Makefiles, read
the temp/log.do_configure log file under the recipe's work directory to see
if that explains why.

(you're probably missing some build dependencies)

Ross

--001a1147b3b0c5f78c0518bbb82e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 June 2015 at 16:56, Marco Cavallini <span dir=3D"ltr">&lt;<a href=3D"=
mailto:cavallini.koan@gmail.com" target=3D"_blank">cavallini.koan@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,<br>
I&#39;m trying to create a recipe <a href=3D"http://rdesktop_1.8.3.bb" rel=
=3D"noreferrer" target=3D"_blank">rdesktop_1.8.3.bb</a> but I get an error<=
br>
hard to understand.<br>
With Yocto &#39;daisy&#39; the same recipe worked without complaining.<br>
To avoid any temporary misconfiguraton I deleted the sstate and tmp<br>
and rebuilt core-image-minimal from scratch and then rdesktop but the<br>
error is always present.<br>
I&#39;d like to know what is wrong with inherit autotools now using<br>
&#39;dizzy&#39; and what is this DEBUG: SITE files [&#39;endian-little&#39;=
, &#39;bit-32&#39;,<br>
&#39;arm-common&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;=
arm-linux&#39;,<br>
&#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<br></blockquote><div><br></d=
iv><div>Compile is failing because configure failed to generate the Makefil=
es, read the temp/log.do_configure log file under the recipe&#39;s work dir=
ectory to see if that explains why.</div><div><br></div><div>(you&#39;re pr=
obably missing some build dependencies)</div><div><br></div><div>Ross</div>=
</div></div></div>

--001a1147b3b0c5f78c0518bbb82e--
