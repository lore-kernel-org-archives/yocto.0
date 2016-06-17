Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C93AEE00D9A; Fri, 17 Jun 2016 03:36:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFE99E00DE6
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 03:36:08 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id a66so95131368wme.0
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 03:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9pfXs6YTNG4QvuGe13Cnzwhyd6/0Dmt7yv60lOqBsFA=;
	b=BZStSjRf8+Ax/K8jvxP7gLrwMBXmOjx4ohq9AEMIXav/cHUZbNq1WcuFmm5dNYc7xS
	f1mb/OBWpMpbsflXDdnH/S2Or5E/ysUYyAYgZQcuA7CuXl+yAge4J10AVCfr3JyiOk7i
	sgLm8UR2ICD6224/x05Qj+F4jOylP8kaVx1/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9pfXs6YTNG4QvuGe13Cnzwhyd6/0Dmt7yv60lOqBsFA=;
	b=eKsx97wEoCZ4yHp1kI8EjGRGzwZbmk68dGnVGPZL1aVQKyI5mphWdN3wILwFtZfHdF
	PhJLpTreg8RJDioPpgUKuPFkyxKTQOUXkZ3liRsQJSRM37ZW6+v7SZRTKXG+rmZWyX+Z
	yQT5kIuJCJY17bTjorboPxi+dpuyFLorJz+ocMTyG31ZEy8W6geie7uX/jyIvearq/o0
	HJ08GrS8iEy7PXV9fqKvUpE6p4g6GraQiKLpihCUYIEK0xaWn2MAsIPKgBNV9fZW8Ax7
	BpfcMpOwHclocNsQQzujudT5sFokQk4eak2U1Lh6xaMmpv+t7UDbtIMQ11K9ciOIiIhT
	4q8A==
X-Gm-Message-State: ALyK8tIL2aPZLQUAAuoCsCZcJ5PSh1MV07x8kQP+QQb/S3a0AJIasKZET8fniWaDvZM3b7oZFGhA8dwON6OpLPh8
X-Received: by 10.194.200.103 with SMTP id jr7mr1587827wjc.105.1466159767499; 
	Fri, 17 Jun 2016 03:36:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.20.105 with HTTP; Fri, 17 Jun 2016 03:35:47 -0700 (PDT)
In-Reply-To: <VI1PR07MB1053399DA94761E52AD7FD7481570@VI1PR07MB1053.eurprd07.prod.outlook.com>
References: <VI1PR07MB1053399DA94761E52AD7FD7481570@VI1PR07MB1053.eurprd07.prod.outlook.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 17 Jun 2016 13:35:47 +0300
Message-ID: <CAP71WjwfD1eeRc-Woo4kjK8iMJHubOr4uTZ=6RQUOXV0XV+Jwg@mail.gmail.com>
To: "Woronicz, Bartosz (Nokia - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is there repository for Yocto documentation ?
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
X-List-Received-Date: Fri, 17 Jun 2016 10:36:32 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jun 17, 2016 at 1:04 PM, Woronicz, Bartosz (Nokia -
PL/Wroclaw) <bartosz.woronicz@nokia.com> wrote:
> I would like to push some fixes to docs how can I do it ?

here:

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/

