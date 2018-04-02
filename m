Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42080E00C6E; Mon,  2 Apr 2018 15:29:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-yb0-f172.google.com (mail-yb0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA33DE00857
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 15:29:41 -0700 (PDT)
Received: by mail-yb0-f172.google.com with SMTP id d7-v6so5292128ybn.9
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 15:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=iSJsvAXVmyOEe/7nlS2z/By260hRQfztOVfb0pLjK08=;
	b=fna7EDUdgu9hE2xi4YLsCTdQx03djg4EmXduN6eRkpmU560thvAER5Rsfg2DWe6yFB
	lHX3IDG/GHOh3cUUXivERgtCl/qa8bzNk7d92NpFeMA3SdXuoqzrxv+Jbxfae9X03Pfy
	erdJvrAfYFvHpaOzaaRCa8XThzxMKQT2cFz8QGd6/WcIo6kYGgso3lShHDj3i469zbC+
	isebmH0BgFRg59mzS5ZuUAIAbzAEud7QlEqReeI4Rn9ONb1K43vipALjsaBvQKkqeHXJ
	fxU1IAxHnNRNBL932v4HnF+WV+83Sl4Ggq9MNul2zcFlY4CxTnem/UL+nh2rGP0mam37
	9YDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=iSJsvAXVmyOEe/7nlS2z/By260hRQfztOVfb0pLjK08=;
	b=WIgKTqXz2pWcNw9OGyecXCC3XSo3r6D1UV1iUR/CPqDtClPROoM7gQWQg9JoGuLY02
	astB55ePazOhqUlyLx83pYu1iA/DlocQfdLmf82vE/zB/hvbybY3UsA85+MSiWNFePFV
	bUhxLZ1+Fe1MfDva/HIqBid03zA2yge67FLc9/FHfokx2BlhGzv3LOr9M4ooUJra2k6m
	p6Ehr90hTXEJmM+2L8kisfNR+8dLpWRkCW8IcHqwsTs350I/VbW9Zdky/oEo3eeSP/vJ
	wQkcTUZ/6HBIMy5AmexFMgfi2qauvQ+Yshgta6vhmIXeuicM4mszuhaq+qcgbHtehXND
	lqDg==
X-Gm-Message-State: ALQs6tDpujDU6fZhnfqFU10MwE4R36SwWlTYVL5HSkd5BP+VDlp+QFpn
	AgkK3FXqbEYPFAuBvKO7cuIBqBFBG/z1xQ8iZ2U=
X-Google-Smtp-Source: AIpwx49QPZRdh5Z8dNW0weAuPv+glTZZsl0RgtkRGPK1bwL60A6JSdW3TldWXkdjcLD+qEqIyrq1k+84vOSybx8EsK4=
X-Received: by 2002:a5b:885:: with SMTP id e5-v6mr6299209ybq.180.1522708180894;
	Mon, 02 Apr 2018 15:29:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP;
	Mon, 2 Apr 2018 15:29:40 -0700 (PDT)
In-Reply-To: <CALbNGRRPXoM72Pudd13N2uWVLdXQJqhisibav9-w_xKf+p-ykQ@mail.gmail.com>
References: <CALbNGRRaocTSP5c0SsvUgPWxV0uMw2BBHD=fv5W1nCLdDC3FQw@mail.gmail.com>
	<CALbNGRTBhbEZNPffkPMK1AqsvU-v055mSC=GVhgZzptDc=eb1Q@mail.gmail.com>
	<20180402211218.GA28631@linux-uys3>
	<CALbNGRRPXoM72Pudd13N2uWVLdXQJqhisibav9-w_xKf+p-ykQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Tue, 3 Apr 2018 00:29:40 +0200
Message-ID: <CALbNGRQjQaBTptFNyDDn0T_53Z0-mNPEQiM9pCgD05mspbdhfQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Daniel Stone <daniel@fooishbar.org>
Subject: Re: [Mesa-dev] VC4 not working for me with mesa 17.3.7 - was [meta-raspberrypi] VC4 not working for me with mesa 17.3.7
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
X-List-Received-Date: Mon, 02 Apr 2018 22:29:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 2, 2018 at 11:46 PM, Andreas M=C3=BCller <schnitzeltony@gmail.c=
om> wrote:
> On Mon, Apr 2, 2018 at 11:12 PM, Trevor Woerner <twoerner@gmail.com> wrot=
e:
> Removed mesa-dev - this is oe specific only.
>> Even without the patch, simply adding:
>>
>>         PACKAGECONFIG_append_pn-mesa =3D "dri3"
>>
FYI: Just sent out a pull request enabling dri3 for meta-raspberrypi.
So whatever mushrooms oe-core guys are going to consume - we'll have
dri3 :)

Andreas

