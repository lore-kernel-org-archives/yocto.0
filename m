Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 8113DE01490
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 15:43:55 -0800 (PST)
Received: by mail-we0-f180.google.com with SMTP id k14so8779293wer.11
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 15:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=8GY6byVSjaTmGTEffhfwL2ME1F6NdiL1mMpfajWOK1s=;
	b=LVlY+oCOuuD0MPMsTyyk+NygZcyHoedh9ponH+WJlgFqTeH53cdKkDktZVmityDlKq
	gSMxwD8e5yJEVQ1YBb+qCrBlIcNcgPHR7mqeYk2P+C3eK4bdr0nLxHiIeYO2e865NqpA
	gaoLQvUMqnt9I8q3XX9Im8cq+R5tmLlHwokJyqGLIm4Fp9vtSrVlDfFZSO1NO1OF2hUa
	EdQ+KPBJ6isFcUQgquuYBgHxpTw6q0IkHOnwX1+jJ4guu3jsi7srJeRjz2VfIzLMjwRZ
	8BHB5bRZioKPHI53zHsN/ep7kJeup4+4hEviMQRbiJ3J/Ea3UE7EYgIcg7CvLViNMTBx
	Q6pQ==
MIME-Version: 1.0
X-Received: by 10.180.75.177 with SMTP id d17mr29890787wiw.16.1362613433391;
	Wed, 06 Mar 2013 15:43:53 -0800 (PST)
Received: by 10.194.45.100 with HTTP; Wed, 6 Mar 2013 15:43:53 -0800 (PST)
In-Reply-To: <CAGxOggHYVaUugWborwmwYFsA3cRDKN6mv+04jzMRMW+70DU_HQ@mail.gmail.com>
References: <CAGxOggE12nhCd7Yohz7Rakr48qyqJ9bhPLBQwWp4KTjv9BkEvQ@mail.gmail.com>
	<CAHUNapTir2grjiC7Fgz6mtt1uh1s0wpVxF0N4f4F+BxCfDwKVw@mail.gmail.com>
	<CAGxOggHYVaUugWborwmwYFsA3cRDKN6mv+04jzMRMW+70DU_HQ@mail.gmail.com>
Date: Wed, 6 Mar 2013 18:43:53 -0500
Message-ID: <CAHUNapQ8qJp0PvNQfGtdyg=DW9Eoy9bnxdSd+B7bjgFHmmV9Ew@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: varun bhatnagar <varun292006@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob terminal is getting terminated
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Mar 2013 23:43:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

I don't see any reason this conversation can't be on the public
mailing list. That way others can help and/or learn from the
discussion. I hope you don't mind be bringing it back to the mailing
list.

On Wed, Mar 6, 2013 at 11:32 AM, varun bhatnagar <varun292006@gmail.com> wrote:
> Yes....I have...I tried running bitbake today....it also checked for the
> dependencies and it was trying to download quilt-0.60.tar.gz from
> http://savannah.gnu.org and from many other mirror sites....but connection
> was not getting established. Is there any way through which I can manually
> install these dependencies and then run bitbake?

If you have look at your conf/local.conf file you'll see a variable
called DL_DIR. If it is commented out, then your download directory
will be a directory named "downloads" based wherever your build it
taking place (if it is set to something, that something becomes your
download directory). If you are having network issues, you can
download the necessary files yourself. If you place them in this
DL_DIR directory they will be found and used by your build.

