Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71B49E00788; Thu, 17 Jul 2014 02:16:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B7BE006B9
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 02:16:43 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id tr6so2455256ieb.32
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 02:16:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=vVRGxL/jxgYe6PdZtlNEaaRZaHuvuJ8nBlABu1zop3E=;
	b=EfLG67WSGDvI9ZGe0vSbyrmmHxJNLjGd/luxGfY3H/0XpIs84I2rzBWqKfGIKm8FhO
	q9R9C911jT6CfzHdOHd160MmUAl3IV1WEnCgya0ly3wpqTEYmfaEIWKqdOR5q+kI5gnS
	BUxy0Adp9cVYdCrYq29XKwGiHc8BFz185teUmerclI5pUBoMoYy7acJul5mY95krRMrT
	rDLjclvGOi6SEMR46nyIQxMZT0Zfi1IjXJD40neckwI3RNdWUoVu7Z7Tpy9TaDQF4rps
	TNMcfIMCOuEB83EDynZ1LopSAV0DLG9XCYqEUWigp7jXqTd4Pea4uAnUi/26FlCbpjT4
	kbLw==
X-Gm-Message-State: ALoCoQk//wIc08szsGv29E7BiEY55ToPQ//lpqt/s/y+iv8qKhaFPyLvP+ggBvcjc0IO8dun7v19
X-Received: by 10.60.164.9 with SMTP id ym9mr1035709oeb.26.1405588603104; Thu,
	17 Jul 2014 02:16:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Thu, 17 Jul 2014 02:16:23 -0700 (PDT)
In-Reply-To: <DUB128-W323C87A7D073BC1437172E92F40@phx.gbl>
References: <DUB128-W12498E2678002801067F3092F40@phx.gbl>
	<CAP71WjwYGsUt7ye2JFsotAis2TPEfk7wFH0jS_1+u72Svc2iBA@mail.gmail.com>
	<DUB128-W323C87A7D073BC1437172E92F40@phx.gbl>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 17 Jul 2014 11:16:23 +0200
Message-ID: <CAP71WjyPw1aArDo75U18k=1td+zDnUE_Vxek_9yBZFhy_C8C_g@mail.gmail.com>
To: Natural Groove <natural_groove@hotmail.fr>, 
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to include native bitstream dependency in recipe?
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
X-List-Received-Date: Thu, 17 Jul 2014 09:16:53 -0000
Content-Type: text/plain; charset=UTF-8

cc list. please let's have the discussion on the list

On Thu, Jul 17, 2014 at 11:10 AM, Natural Groove
<natural_groove@hotmail.fr> wrote:
> "biTStream is a set of C headers allowing a simpler access to binary
> structures such as specified by MPEG, DVB, IETF, etc. "
> (http://www.videolan.org/developers/bitstream.html)
>
> It does not have to be built (just make install)

ok. you still need a recipe for it, it will be a simple one that only
install the .h files in the '-dev' package. then your other recipe
will just need to DEPENDS on bitstream or bistream-native.

the .h files will be installed in the sysroot like any other package/recipes.

