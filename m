Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C530E00BAF; Tue, 25 Jul 2017 23:09:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.181 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5996FE00BAF
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 23:09:47 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id s70so67065646pfs.0
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 23:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=Xf8O7RcQxxbpy98Fbg1BNl2KGx4k+YH1eymyTSwE41Q=;
	b=BoZb+pX3Mn+tkgwJIUY//suhOwa1potz7gtOWDf/e+crh0DpKEv5DD4W4C6TMHaFV8
	SxLYwD75p/g4tJZzHgA6fuAoc9V+RTYa7Iu3ZQkyeF5cRKUHi/t2qwOchIwBarjfpaYJ
	jg2rpjBuchh1kDV8k1Yv4SKK3iHWW9wQL8Flst43Sj+sTgugFGiiiR4q3svTcJwj8BvS
	mX2+LQb3TBU/D+sbZwgrjn9qltEfsQVvES16ySY33sAw2fkV/x+GAqMxZ27LgcFM/wdw
	jDN13DGDbsnZn7AarW44XER9AY6ljGgCKplfO/yOvnWFAB8PyQpgew1yW7x9KySQk6EQ
	HPsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=Xf8O7RcQxxbpy98Fbg1BNl2KGx4k+YH1eymyTSwE41Q=;
	b=JngRZrdXGTTyh60EMfuajP71OFBANxqHZit/xxMv8OdlG82AJ7SpHEhmoPxa0y5/Qg
	J7uP6tk6BM8Y3rwgE3XTVnBqd7C3q31qjrsIS/jrXeWtOdDgeUjjmvzmgsm/CzZcJpii
	qUpnauRTOA3O6aLv6u1TQo2TaaxnOcanhUorWRfri5BGksc1fOpQrla99/YylsllNrgy
	4RIkhB6VcEfy5nnEvajxw8CX4pxa5RFvPglZqB6dNgXf9DMZ11Jx5mp6W7VpzqwfiXmY
	B/9pVBVS35P/LNo7eze+4Xik0/QHeMWJyhF2CXbOVZHetHCKP4UsPGWpaXaBBgFio6Nx
	BnRQ==
X-Gm-Message-State: AIVw113RSXMnQSC+SG5uwWPHEKx66dml6kyW4Oo3qPt6sBI/1dhAOOnS
	TkWHY5Du9Xe1fRoE
X-Received: by 10.98.7.132 with SMTP id 4mr8984654pfh.216.1501049387210;
	Tue, 25 Jul 2017 23:09:47 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:3c0c:83f6:8591:c912?
	([2001:8003:804a:b500:3c0c:83f6:8591:c912])
	by smtp.gmail.com with ESMTPSA id
	y62sm28235121pfb.3.2017.07.25.23.09.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Jul 2017 23:09:46 -0700 (PDT)
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <ebdb747a-8506-87d0-b1ac-8338436d7dd6@gmail.com>
	<3917f163-9def-7069-ea70-0a9a943e8dc0@rsi-elektrotechnik.de>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <118eb01a-00c6-7aff-3e4b-ce3ee56a9841@gmail.com>
Date: Wed, 26 Jul 2017 14:09:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <3917f163-9def-7069-ea70-0a9a943e8dc0@rsi-elektrotechnik.de>
Subject: Re: Mpich and yocto ?
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
X-List-Received-Date: Wed, 26 Jul 2017 06:09:49 -0000
Content-Type: multipart/alternative;
	boundary="------------2D1356EA733DAE3C0F9B3C51"
Content-Language: en-US

--------------2D1356EA733DAE3C0F9B3C51
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

How can we do that ?

bitbake in which node ? I don't understand ?


On 26/07/17 13:57, Josef Holzmayr wrote:
> Hi
>
> On 26.07.2017 05:12, Riko Ho wrote:
>> Does anyone know on how to run poky on mpich cluster ?
>
> As far as I can see, MPICH is a userland library, basically. So it 
> would be the other way round, you could probably run a mpich 
> application on a number of nodes that run some OE/Poky thing.
>
> Greetz

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------2D1356EA733DAE3C0F9B3C51
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>How can we do that ?</p>
    <p>bitbake in which node ? I don't understand ?<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 26/07/17 13:57, Josef Holzmayr
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:3917f163-9def-7069-ea70-0a9a943e8dc0@rsi-elektrotechnik.de">Hi
      <br>
      <br>
      On 26.07.2017 05:12, Riko Ho wrote:
      <br>
      <blockquote type="cite">Does anyone know on how to run poky on
        mpich cluster ?
        <br>
      </blockquote>
      <br>
      As far as I can see, MPICH is a userland library, basically. So it
      would be the other way round, you could probably run a mpich
      application on a number of nodes that run some OE/Poky thing.
      <br>
      <br>
      Greetz
      <br>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------2D1356EA733DAE3C0F9B3C51--
