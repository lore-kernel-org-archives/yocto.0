Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A320DE00B66; Sat, 24 Oct 2015 14:30:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57820E00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 14:30:10 -0700 (PDT)
Received: by lffv3 with SMTP id v3so114254991lff.0
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 14:30:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=NnhbBY3yIsaUMDAxVjUKEfTHd4KBQVAC8DeLq9O/LI0=;
	b=MjHAeBGAXVf2VowQalMMaKfF+pw6Syn8JigC/r6yaDDu/0kLeU9YmFeL7o5fIRxDgV
	8lC4ffMgt+cB/p2cKRGIXiS6Z3PLqAieG/lAAMGBXJa+LgIGRQmuCmOWtLXpwIUgHGTE
	gz4kIeV2Vo+GHdrzrglhOehwPMGA9G0BbYyt+IOpOo+H7kQFF+TZI9EY1eDUArUGWbYi
	9BJQYvYJl6O3X88MvbGmz+iYGXgH1kd2Zjajcpgn0ccQq7K97FfQpxVXnjwT4//VMyL/
	qvsDMe2leCQ7QUCaeQxq24vBOO5Sss4p9SS61LO715mSRKtT955SaNubpBEL+ioOp71Q
	sZqw==
X-Gm-Message-State: ALoCoQl5/vkcs9ZEMSXvzQj6vNKlrwFyrpSkmFaiw2AHShR49flJg1SLPK1TrbxLXMptSAFUs5u5
X-Received: by 10.25.24.195 with SMTP id 64mr9349238lfy.71.1445722208378; Sat,
	24 Oct 2015 14:30:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.198.71 with HTTP; Sat, 24 Oct 2015 14:29:28 -0700 (PDT)
X-Originating-IP: [88.67.185.162]
In-Reply-To: <560E7269.6090903@gmail.com>
References: <DUB122-W3822DB1A9BC96901F1DF0924B0@phx.gbl>
	<560E6BA8.2050102@gmail.com>
	<DUB122-W69A1756408C95D38CAFE5924B0@phx.gbl>
	<560E7269.6090903@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 24 Oct 2015 23:29:28 +0200
Message-ID: <CAK18fxE5L0e9Mz-a-90K0Rs5GSkXfOvvc0JHbf2UR+aF15u-=w@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [raspberryp2] Error during the build of linux kernel
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
X-List-Received-Date: Sat, 24 Oct 2015 21:30:14 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

On Fri, Oct 2, 2015 at 2:02 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On 10/02/15 07:58, Karim ATIKI wrote:
>> Hello Trevor,
>>
>> Thanks for your feedback.
>> You really think that "Fido" is an older release ?
>
> Sorry, I didn't mean to imply it was "old" and therefore should be
> avoided, I meant to point out that it was something that was released
> before the switch to gcc5 by default :-)
>
>> Is the 1.9 release of Yocto stable enough yet ? And will this pb be
>> fixed as well ?
>
> I think the next release will be 2.0. Whether or not it is stable enough
> is something you will have to evaluate for yourself :-) I'm rather
> certain this issue is already fixed in master, therefore it should be
> available for the next release.
>
>>
>> Karim
>
> Did you really mean to reply personally? I've re-CC'ed the list, hope
> you don't mind.

First of all please use the correct email subject tag: [rasberrypi].
Otherwise your email might get overlooked.
Now about the issue, did you try master to see if it fixes your problem?

--
Andrei Gherzan

