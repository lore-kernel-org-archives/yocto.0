Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E92A1E00B6C; Fri, 13 Jan 2017 02:02:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9312E00B6C;
	Fri, 13 Jan 2017 02:02:21 -0800 (PST)
Received: by mail-ua0-f170.google.com with SMTP id 96so33376360uaq.3;
	Fri, 13 Jan 2017 02:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=VbIJL++Ys+AGwvreWiJPV40tQYBXTBmbPGEv6c0ZA2M=;
	b=UO6tpDeamMIZZJwV99MLTN+LZE6ptW24QD/UotVhC1SEyVTz1TILd1jm9rAaYNhyUV
	/79TWiUda+w7Qs3qC1oMVt6xZXaYBGRoYIovfB4gYmewIP9YXwlQ2my9pu8oy3AsAwzU
	S9Twn+pWrnDzz8A30VlV9KgtUYL/pFtwVsWDePu5S/vKkpIWdLv7fYVK1LrE4SaAHLBW
	QAMcrFnJw0OPlWbdMrBXZqMitlpUQef9BUVpckhTcmfrqNWvI4A2e0YcYChzVTABA7VC
	a7H7uqYsb8zjCsaO9wT2YugKu7T50QFnb971rEos3gtI1XimygGp1nJKwtyMsNEPSW+I
	Um2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=VbIJL++Ys+AGwvreWiJPV40tQYBXTBmbPGEv6c0ZA2M=;
	b=QkELo3ay/J8K5qDSd7lg2UdPg1zb8BVkTmEh+ZU0h+I3RyQhx+2ZeeRLun7Z5AUDqU
	16NO1Y5lrnjx3kgGQwSM4akdWeUkBaB63J4lcyl1x+LNxnkDlfYYpSB8+zoghN3oBkcx
	CyCFbooxfF8lKVw8rkPZsSqkknJBCj/j11HPVElpoVLA/qqrUuDTae9LJNBcvLLKofbK
	oUP4Vi7MGwGnEfPO/EXxgu5YNxzIhX9H9lZdvqpPR3PQGy4RMuCFixBiBBO3267Xs9Ig
	IwPB1bQbP94ai15TYlnLX8cC/gpCWEwvzAMVH7lXimLI7dXxygsiFWdJO6R98vTTysCw
	HzaQ==
X-Gm-Message-State: AIkVDXK1JsuS91B/RkFnc3GE8z9E9+/ODAROLeHseMAwuajcUaQ+l+/bZAYKPk/GXMtlDKo2Lm0WsEj8043Jzg==
X-Received: by 10.159.35.15 with SMTP id 15mr10126980uae.47.1484301740885;
	Fri, 13 Jan 2017 02:02:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.69.246 with HTTP; Fri, 13 Jan 2017 02:02:20 -0800 (PST)
In-Reply-To: <2102802.MZXjXepLX7@peggleto-mobl.ger.corp.intel.com>
References: <CALbNGRTer2zeMMwEfjUVsBtw7X2Xxc4STGvA3YmO1CniWsvEqA@mail.gmail.com>
	<2102802.MZXjXepLX7@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Fri, 13 Jan 2017 11:02:20 +0100
Message-ID: <CALbNGRRq8iODPF=vFXZk6wrtKr-szExdL2wazEZGHMZUbXYbCQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Openembedded layer index stopped updating
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
X-List-Received-Date: Fri, 13 Jan 2017 10:02:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 13, 2017 at 9:55 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Andreas,
>
> On Fri, 13 Jan 2017 08:56:47 Andreas M=C3=BCller wrote:
>> again me... sorry but I use index regularly to check if somebody else
>> already created a recipe I am interested in.
>>
>> I think it was caused by maintenance changes.
>
> You're right, we have just done an upgrade and as a result we are current=
ly
> dealing with an issue updating the index, as yet I don't know what has ca=
used
> it exactly because we aren't actually seeing any errors - the update proc=
ess
> only manages to update some of the layers before it stalls and then event=
ually
> gets killed. We're working on it, apologies for the inconvenience.
>
Thanks and there is no inconvenience - was just a ping

Andreas

