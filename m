Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37487E008D3; Thu, 20 Oct 2016 10:44:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC941E0081E
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 10:43:58 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id 128so6170993pfz.1
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 10:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=78ycKjq7OwAHf0N9H6lvG0M5IYL1B8qQXMgry6mRw8E=;
	b=06Z+lPIKC9xbxVzV+kVRSNEPPw8j7GUoRbvqYXYv+3tm3EuJ5nK0d5Mw7R9gYZUH5Y
	V/fFv8nv6tyQfqefmDOzI1YNOljjB6lmRNNLZx50DplLcK+l+waic4h1ei3b/GceuRVA
	z08N61O4DAFuY51gJLykaEl8OCb/sTHJoRcDtxS4dH+os17fbpMz6IRG1zMmk4mFZKQj
	xOCBUeFs1ADcIx/GW8zpv00xASONSTFRRC1rzH875SFbOxw0e98pYvD4i6CQ8qdvAkOj
	2xNND/Cei0rNhEnA4wPl0XFEvKVNDIXPz+TPQEt/vRGS/xQ2aL51smOoXLWaNTMr3JLQ
	2Xiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=78ycKjq7OwAHf0N9H6lvG0M5IYL1B8qQXMgry6mRw8E=;
	b=mAJI5pgAsOWzsrpDzQ9sL3OzTnIvhq+RxKWnTNTKfHU3eTr5oJQR5z9IM8/bzR+iAC
	P0QK1Z9/+B69AGfNOdqiQJczdH4FzrpZcuNU2GrnldA84EjwL2KRT2NT8kj3KQ3+Pg/y
	krTFitLDCcmEph0YHcrOPs/4uD+09sPyQJ2PzLd4tQ5jT0Q4nvDy9mywHeo7aoXa0SqX
	qEXc/SYI0xPVDbSC3cm6Ok+h+YtsiLHC7e/etFNR9WSpWgzwtY+kRkE2oetilwvbGZRa
	62InbNol0baqQIzvqWML2Wv/mcL+pM84nWaIFrBCK5lGpDm/08j00T5oUJKMNypRmow1
	YxwA==
X-Gm-Message-State: AA6/9RmRIDvTwwMA2ALyRgKmUthTv5jhR8ey0lNvHCdIZaKsEpDw4A36fIcvc5okDGt/2w==
X-Received: by 10.98.57.140 with SMTP id u12mr3365059pfj.127.1476985438053;
	Thu, 20 Oct 2016 10:43:58 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:bc9a:54ac:66f2:66ed?
	([2601:202:4001:9ea0:bc9a:54ac:66f2:66ed])
	by smtp.gmail.com with ESMTPSA id
	d79sm30803431pfj.68.2016.10.20.10.43.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Oct 2016 10:43:57 -0700 (PDT)
To: Yile Ku <stiffstone@gmail.com>, yocto@yoctoproject.org
References: <CAAGP=A-A-ffYuEEZFE6w4jGdqp19ZCQKCb_NMK6b8JwsD4jAJQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <0d3fb7d9-a290-4582-db64-64a0e28a5900@gmail.com>
Date: Thu, 20 Oct 2016 10:43:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CAAGP=A-A-ffYuEEZFE6w4jGdqp19ZCQKCb_NMK6b8JwsD4jAJQ@mail.gmail.com>
Cc: tomas.novotny@tbs-biometrics.com
Subject: Re: ODROID-C2 and meta-odroid
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
X-List-Received-Date: Thu, 20 Oct 2016 17:44:01 -0000
Content-Type: multipart/alternative;
	boundary="------------419DA5CB594C04821A22E6B4"

--------------419DA5CB594C04821A22E6B4
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10/20/2016 09:25 AM, Yile Ku wrote:
> I am having some issues getting the odroid c2 board to boot with 
> images built with meta-odroid and yocto 2.2.

The C2 integration to support 2.2 is not complete. Krogoth branch should 
work as it uses the hardkernels u-boot and 3.18 kernel. Neither will 
build with the 6.0 Gcc.

I have the latest u-boot (2016.06) booting on the C2 and everything 
compiling. Just have not figured out the magic to get a 4.8 kernel to boot.

> Is there someone I can correspond with regarding these issues?
You did not explain with the issue is.

- Armin

>
> Thanks,
> Yile
>
>


--------------419DA5CB594C04821A22E6B4
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 10/20/2016 09:25 AM, Yile Ku wrote:<br>
    </div>
    <blockquote
cite="mid:CAAGP=A-A-ffYuEEZFE6w4jGdqp19ZCQKCb_NMK6b8JwsD4jAJQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>I am having some issues getting the odroid c2 board to
            boot with images built with meta-odroid and yocto 2.2. <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    The C2 integration to support 2.2 is not complete. Krogoth branch
    should work as it uses the hardkernels u-boot and 3.18 kernel.
    Neither will build with the 6.0 Gcc.<br>
    <br>
    I have the latest u-boot (2016.06) booting on the C2 and everything
    compiling. Just have not figured out the magic to get a 4.8 kernel
    to boot.<br>
    <br>
    <blockquote
cite="mid:CAAGP=A-A-ffYuEEZFE6w4jGdqp19ZCQKCb_NMK6b8JwsD4jAJQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>Is there someone I can correspond with regarding these
            issues?<br>
          </div>
        </div>
      </div>
    </blockquote>
    You did not explain with the issue is.<br>
    <br>
    - Armin<br>
    <br>
    <blockquote
cite="mid:CAAGP=A-A-ffYuEEZFE6w4jGdqp19ZCQKCb_NMK6b8JwsD4jAJQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div><br>
          </div>
          Thanks,<br>
        </div>
        Yile<br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------419DA5CB594C04821A22E6B4--
