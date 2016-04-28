Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20F9EE00DE1; Thu, 28 Apr 2016 09:26:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4433CE00DDA
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 09:25:59 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id m9so71275554ige.1
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 09:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wJCEkEwTZehNG4Z+9A5vAlcp1zkDRl6xmPYIBWdmLhg=;
	b=Cgt9P7ufyRr/FcQsSCKVIWRW1YcUZU/haOvQQa+Wu7a7+44t7C9A+9gw8A7Nui9u2S
	SkQBgU7QpYBJCw5uTMTU0fylqcIG8rp8yEGRBG9zMIajHALHg8vjuaa2cwUJ51DI0Z3t
	NnIOFtioiIBG2m79cK8ZO2ucWr9i8Bbcny5vIFRwpbDYzt5tvyYwq2p5GGogdCHN8p0W
	6gLfB2jlr3aB9SWv0DUKwfKQUyeOMXlRb0Qbxt/xqUTKFi+l16ga2M3wUgPVMElw8MLA
	mlSQSsJHRvbgHsyn88XA1mohOBI8zbNzID45bFerJOD+7YvZR0UUquVFP75aQyOb4eER
	w1/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wJCEkEwTZehNG4Z+9A5vAlcp1zkDRl6xmPYIBWdmLhg=;
	b=Hk0gL8C65G4b/ckunXVbSI0MysAFTxsIW+t0IyT4QZ4Uev7+IuzHw036VGjn4IoLlt
	MemrZ8YjSotxDx5V2UZfZhotrIEIFbiVU40HzJzKtlvkUSxxZuOndriVdM0THRDBD1rj
	xQKVVrlDzEMQsCKIPmZQUXJmDmhojvqg6QD5jx5bnym/D72EuIdHw8MgMqmr+hS3Ofya
	7eJzxLMgpR0Ruz6jU9wjLXM0hja8Kg5WiZbfqphWFhmAXkysQKFkOhgJpy3REewQ65xt
	NdCDuXqVyoc3ntIGA1pgEUAOZUlHeyLtx0cnjf7yJd9D5qNF5jqa4dOV7dBgwtxHO2OW
	QUgQ==
X-Gm-Message-State: AOPr4FWXq6kLRdrNxg5f6Yjyvs3d4B3bntoZ1tiLksKv3eYuYvkbYf/KitGAyTnu4CRGWLw+lEDVsTnvqUBNoHQZ
X-Received: by 10.50.62.20 with SMTP id u20mr18889669igr.52.1461860759111;
	Thu, 28 Apr 2016 09:25:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Thu, 28 Apr 2016 09:25:39 -0700 (PDT)
In-Reply-To: <SIXPR04MB0668640023EA6AFE4596C0ADEC650@SIXPR04MB0668.apcprd04.prod.outlook.com>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
	<CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>
	<OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
	<SIXPR04MB0668640023EA6AFE4596C0ADEC650@SIXPR04MB0668.apcprd04.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Apr 2016 17:25:39 +0100
Message-ID: <CAJTo0LY3yqttg6hf3saU+RoLco1_GmNRy7pT+wDciBFFHep0HQ@mail.gmail.com>
To: YUKATHARSANI JEYACHANDRA <yukatharsanij@tataelxsi.co.in>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 16:26:01 -0000
Content-Type: multipart/alternative; boundary=047d7bdca606428e4a05318dfbe3

--047d7bdca606428e4a05318dfbe3
Content-Type: text/plain; charset=UTF-8

On 28 April 2016 at 17:18, YUKATHARSANI JEYACHANDRA <
yukatharsanij@tataelxsi.co.in> wrote:

> Use INSANE_SKIP_${PN} = "installed-vs-shipped"  in your recipe to avoid
> this error. Orelse, add FILES_${PN} += "/usr/local/" in your recipe.
>
> No.

*Only* use installed-vs-shipped if you're incapable of a) packaging the
files or b) deleting the files in a do_install_append.  Skipping that
warning means you won't notice new files being added to the install that
you don't package, which could result in broken packages.

Ross

--047d7bdca606428e4a05318dfbe3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 April 2016 at 17:18, YUKATHARSANI JEYACHANDRA <span dir=3D"ltr">&lt;<=
a href=3D"mailto:yukatharsanij@tataelxsi.co.in" target=3D"_blank">yukathars=
anij@tataelxsi.co.in</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><p>Use INSANE_SKIP_${PN} =3D &quot;installed-vs-shipped&quot;=C2=A0 in yo=
ur recipe to avoid this error. Orelse, add FILES_${PN} +=3D &quot;/usr/loca=
l/&quot; in your recipe.</p>
<p></p></blockquote></div><div class=3D"gmail_extra">No.</div><div class=3D=
"gmail_extra"><br></div>*Only* use installed-vs-shipped if you&#39;re incap=
able of a) packaging the files or b) deleting the files in a do_install_app=
end.=C2=A0 Skipping that warning means you won&#39;t notice new files being=
 added to the install that you don&#39;t package, which could result in bro=
ken packages.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">Ross</div></div>

--047d7bdca606428e4a05318dfbe3--
