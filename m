Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17D9CE013D6
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 09:39:29 -0700 (PDT)
Received: by mail-ee0-f50.google.com with SMTP id d49so5585626eek.37
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 09:39:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=xHiZkQcqLlS+9MBgpjQaOxDfSchoHYx9FE7pfCpT3Ds=;
	b=AanNFHx6ccyW3+pi8PBHVZtqzhCWJ7mWvp3F+B4XsajwiugDngAw7IZ6aP4ymXslZ7
	3Nv7s06ozm4GBkgFvYmG2jdzE16wmCoYKFlC3SlaZZaUNcrR+wKwE5MJuPwD1BO8EdQJ
	UlecCNNwcfQE7sUDH0HV84+GTOiOtUrHYp+Oh9HRQjEPUmZDfsLoWsqueBUBTcUC1IGz
	sPIwOsAeLnGOGjJUOK70KoTMuhF6VuaB2cmJ8k5So24jZk5HZl3UkDpuMayc9KB/K8Yu
	HL9fmt8lGHjrKwO2nLcs1gqOk+1RLofPPu3vrqauNAOttUANP+sSdy99nvgZLWvrVQtw
	+gcw==
MIME-Version: 1.0
X-Received: by 10.14.199.134 with SMTP id x6mr42755868een.114.1373560768131;
	Thu, 11 Jul 2013 09:39:28 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Thu, 11 Jul 2013 09:39:28 -0700 (PDT)
In-Reply-To: <CABcZAN=T=GXxyuc1jDsAUSk_0USzwU+1qYv7F9ohRyUQ8J_pkQ@mail.gmail.com>
References: <CALmOhgmsZUWEv1pv=D=ZEm=2RzXRVw4E6mwC0iXEMWt_+_5zFA@mail.gmail.com>
	<CABcZAN=T=GXxyuc1jDsAUSk_0USzwU+1qYv7F9ohRyUQ8J_pkQ@mail.gmail.com>
Date: Thu, 11 Jul 2013 17:39:28 +0100
Message-ID: <CALmOhg=PWDqS7gYN2ELZBOGDFBQD=NxsoVkfeMwnBOmiCHsBqQ@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Chris Larson <clarson@kergoth.com>
X-Gm-Message-State: ALoCoQmpvYCI77iCbKFJxrkLSLblI1t0Z+lRSWWq85BEgIHIbyTeTn7VbznNB2ui09xaH0ufTHYN
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake-env
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
X-List-Received-Date: Thu, 11 Jul 2013 16:39:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 11 July 2013 17:27, Chris Larson <clarson@kergoth.com> wrote:
> On Thu, Jul 11, 2013 at 9:25 AM, Trevor Woerner <trevor.woerner@linaro.org>
> wrote:
>> Has anyone tried using the bitbake-env utility lately?
>
> bitbake has had some changes recently. Try using the 'show' subcommand of
> https://github.com/kergoth/bb instead.


Thank you; works great!

