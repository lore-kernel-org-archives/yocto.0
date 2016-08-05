Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F9EFE00D48; Fri,  5 Aug 2016 06:09:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45245E00D33
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2016 06:09:33 -0700 (PDT)
Received: by mail-ua0-f196.google.com with SMTP id s7so5791547uas.1
	for <yocto@yoctoproject.org>; Fri, 05 Aug 2016 06:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZwfMLgo+cFHkax/6XFL7Mt1GQmNr7ciWhUWDUYu45LA=;
	b=G0/OK50xzbDjve6DArehGMcwLb8+o8yLwhu7Xw//yD5J9oqGuvAvrxwrUrYWAZOqQI
	/6r9CMDwMA6Uoldfw97m480lur4Omr2t6UCV8n2tvdsUYlmS5bd4XDkKDbQ0Rh7iIPEk
	OwH7QLPw//p3bErMxIUxv3bkWCaQ2X/nnG2qLfxNAZr7Sv8sJ9HBiL0Iucjj1g3lhJmR
	w2SKmbxwjsjADiN9TRw1qFr6tmuHGVj7DttfFLJm0Q2l4TJmaIQmkPbFa11+h/jfBbmk
	cpZ1V1UmoYxFf/RXjt2zTkrf92ztIMFzO/n8niEfGa6GhokCZjceXgtX9gsxJpA+1F56
	EmEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZwfMLgo+cFHkax/6XFL7Mt1GQmNr7ciWhUWDUYu45LA=;
	b=ZFiPxOf75ofbVGjHvor/8cgIwuJ5eVsrD3hDljelFViXOhigXwCd/RlnTooR8X7WLI
	7+T1Bl89pT4sjsD18DtO7UU/cywSjxhEoRiya3dnQO/dlH6fDZ6lnFfJZqv7nSpGWhpR
	CKahU4+GkaVRnRiKyRg52MRvfqTYp+Cp1hypG6MYF81uoBMzPOGWct8nIvBgZ4uxeBpe
	IJyM+8z0Clc9T/rUOgzinQFoHBrlwN3bON1G2h6XrJDfsp7WWq5TvEaZ2ccy6B5Ymjk4
	kURaKMV78unUCK9PVpA1xB32lgD99NbfGctnVhHbNa1okIOoCplfB7ClVYN1MGL4UgRJ
	6owA==
X-Gm-Message-State: AEkoouv2iQ0gE2FYMGgRyXyvykGPiz/XdCokn4LL6cY3sUoSabCfVzBQLnaiBHkmLukCxsvrUbqv010qNFDagw==
X-Received: by 10.176.66.132 with SMTP id j4mr41118432uaj.120.1470402573326;
	Fri, 05 Aug 2016 06:09:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.194 with HTTP; Fri, 5 Aug 2016 06:09:32 -0700 (PDT)
In-Reply-To: <DB6PR0401MB2630F07261D403443769027EEE180@DB6PR0401MB2630.eurprd04.prod.outlook.com>
References: <VI1PR0401MB2638304EB5805908380CE4ABEE050@VI1PR0401MB2638.eurprd04.prod.outlook.com>
	<CAF3SDA57Np82+0pS=-5CuHTptJ4XPz_LgYS-y1y4nn+7P_aGwg@mail.gmail.com>
	<DB6PR0401MB2630F07261D403443769027EEE180@DB6PR0401MB2630.eurprd04.prod.outlook.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 5 Aug 2016 10:09:32 -0300
Message-ID: <CAF3SDA7SEDoUU0RC+9kMf9u95bzEiXOzp_26ig46inB93-HJkw@mail.gmail.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto rootfs to support auto-login or remove the login prompt
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
X-List-Received-Date: Fri, 05 Aug 2016 13:09:36 -0000
Content-Type: text/plain; charset=UTF-8

You'r welcome! :)

2016-08-05 4:53 GMT-03:00 Zhenhua Luo <zhenhua.luo@nxp.com>:
> Thanks a lot, Daniel,
>
> I will give a try.
>
>
> Best Regards,
>
> Zhenhua
>
>> -----Original Message-----
>> From: Daniel. [mailto:danielhilst@gmail.com]
>> Sent: Wednesday, August 03, 2016 9:10 AM
>> To: Zhenhua Luo <zhenhua.luo@nxp.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Yocto rootfs to support auto-login or remove the login
>> prompt
>>
>> I don't know if Yocto has something more standard but, you may edit
>> /etc/inittab to spawn something other than getty. You can achieve this by
>> ROOTFS_POSTPROCESS_COMMAND.
>>
>> Take at look at this ancient link:
>> http://www.tldp.org/LDP/sag/html/config-init.html
>>
>> 2016-08-02 5:46 GMT-03:00 Zhenhua Luo <zhenhua.luo@nxp.com>:
>> > Hi,
>> >
>> >
>> >
>> > I want to generate a rootfs image which can skip the Linux login
>> > prompt or auto-login Linux? Is it possible in Yocto? If yes, may I
>> > know how to implement it?
>> >
>> >
>> >
>> >
>> >
>> > Best Regards,
>> >
>> >
>> >
>> > Zhenhua
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>>
>>
>> --
>> "Do or do not. There is no try"
>>   Yoda Master



-- 
"Do or do not. There is no try"
  Yoda Master

