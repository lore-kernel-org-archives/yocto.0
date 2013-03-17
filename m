Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F7C0E01474
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2013 17:39:12 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id m17so2128635vca.39
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2013 17:39:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=pjhkqQ5mElk/in+9ANMFuXJVXqt6TZ/NlsfjfD+bw7c=;
	b=pvpA11tuTMk0L86850idvVRCgXs94a7JiS+0wiqzQxG0rhgHFOi7AqyftOEhIEbXEz
	84kOJexksOixE41i5WOCA9SoNNTx6G/2osfruIzwHbzCuSTTWFeiFlHoxTzbcTXnXlIJ
	St6mgbUeRUHF7uZjwClRP8zYFSVi6mPQBUi/Ul7ED4x744zUJATxkN0ysyI/TXzMicqR
	IbwGHnlMTRmH9fWwMMSNuGuslwtmCmqNs0wlwckaZmkpXAoWX9cKyPXJcNyKFB4g3j3J
	Lv4cegeD2vsfikW9x32kYWWMbdky9nC/Qn5IaQsAwXgZboduEFAL1HEHLELBAnZaWY9m
	Glvg==
X-Received: by 10.52.155.5 with SMTP id vs5mr11567668vdb.24.1363480751385;
	Sat, 16 Mar 2013 17:39:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.125.102 with HTTP; Sat, 16 Mar 2013 17:38:51 -0700 (PDT)
In-Reply-To: <CACzyEJ8nphA7Li_SOK3BaDT+1qfVKTdxDsncyD5N2C8jYB0G5g@mail.gmail.com>
References: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
	<CAJTo0LY52qE3QMO_FffY3GOkt2VDd+bNbYkX130y3wv34zu5iA@mail.gmail.com>
	<CACzyEJ_rkzc1udoPsb2Nh34n8DPefGpp5Xvh=8E-w5d5TumBSg@mail.gmail.com>
	<CACzyEJ8nphA7Li_SOK3BaDT+1qfVKTdxDsncyD5N2C8jYB0G5g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 16 Mar 2013 17:38:51 -0700
Message-ID: <CAJTo0LaRQ+LdUN+c2H3Dd4qL9j+C_Be+FjyNEe0SqyXT6YbSjw@mail.gmail.com>
To: Insop Song <insop.song@gmail.com>
X-Gm-Message-State: ALoCoQlAr1encqUJMW6CsBrhKKx8upcGdr0TfTJnpKWyeDUQdpgaNUV6LC53cEYIAXdzh3+DHbD/
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [question] "icecc: improve interaction with sstate"
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
X-List-Received-Date: Sun, 17 Mar 2013 00:39:12 -0000
Content-Type: text/plain; charset=UTF-8

On 16 March 2013 01:16, Insop Song <insop.song@gmail.com> wrote:
> So at this point, I will wait to see if any one is seen this recently.

The autobuilder appears to be hitting this still, but as several
oe-core maintainers are still travelling after a conference you may
have to wait until Monday.

(writing this from Seattle airport)

Ross

