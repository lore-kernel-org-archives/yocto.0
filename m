Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D7BBE007A0; Mon, 30 Mar 2015 11:55:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0A47E00754
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 11:55:31 -0700 (PDT)
Received: by ierf6 with SMTP id f6so58735274ier.2
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 11:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=NTSFxVIpKZp5/yBYZBGGmvwliOwHLlsGFoAbFu0lxJY=;
	b=vI1Sn33RIMTLWKkK0uxJzUOpJzw2dVZh8ZEn1E0reuqHHJcVX/qXp24NuJLKogGauy
	f9/6bfqxfUeYxCn1ktV16Se/B3rlXsgTFe0ytLx005Who3TywmooLITET3lDPYy+yjke
	WvwKWFv0d2kzi5TAXX/WmIrxV2TgyvKTbpZ2tHtvk4ThL8hT9QUdPVMD3VBOg7J1CIUK
	IrJTDURA4aiZe+Pe2PEzw8WajgTM9w1xoPff8Meg9+Cji6U7I/zWJx4KKvEdJhsSwyl5
	C/jaeBndUprsEapLZ1iVMBJxhibqkp40LiADlC+Heuw+0t3d/HXWN782j1TznH67GPVd
	gqcA==
MIME-Version: 1.0
X-Received: by 10.107.167.145 with SMTP id q139mr51486948ioe.16.1427741731083; 
	Mon, 30 Mar 2015 11:55:31 -0700 (PDT)
Received: by 10.50.249.133 with HTTP; Mon, 30 Mar 2015 11:55:31 -0700 (PDT)
In-Reply-To: <D13F4AC9.58302%belen.barros.pena@intel.com>
References: <D13F4AC9.58302%belen.barros.pena@intel.com>
Date: Mon, 30 Mar 2015 12:55:31 -0600
Message-ID: <CAK5mtewSMT9OKiAu0vZquBDesMxvyGZdC9WL2txxQ3V7DC=sEg@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [RFC] Toaster integration with Jenkins
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
X-List-Received-Date: Mon, 30 Mar 2015 18:55:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 30, 2015 at 11:47 AM, Barros Pena, Belen
<belen.barros.pena@intel.com> wrote:
> We are considering working on integrating Toaster with Jenkins as part of
> the next Yocto Project release. Our thinking so far is collected in this
> Bugzilla feature:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7527
>
> Any thoughts? Are we missing something? Are we going about it in a
> completely wrong way?


I think is a great idea and will be really useful for some current
infrastructures

Best regards

Victor Rodriguez

> Let us know.
>
> Thanks!
>
> Bel=C3=A9n
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

