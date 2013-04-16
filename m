Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78228E01469
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:11:04 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id da11so763724veb.27
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:11:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=D1C4W0An2axLC5QJHIJcKqgf5O9Uli8g7bMPiYxKTek=;
	b=RlKQweWvFmkU8ExOZBY6Q3u4dWR61RPKQMI9q9xNiutRp0XrnGlKBDSxCP1jcdAFPO
	PM2okraGDt4PU3JNH5rSnbVAivOJs3A9kakdyGnk3F1pFszKNlIsF0lsGLYb/PQ6J6mb
	JLSKjjd+t5RDUGJPTxbxicEDBYoGQKE+hAOuqWK+jf7gye4MYOTNOXFSQzbtvh7uTaa5
	5843ntx6YI0l0KerHygOXTK/uOAMOQJ2fgQN861OYusXvZkhPJvupPZNemapTJZFWNWz
	1N2zx4yXV1viUVujBDwUfbMO4gkXeTKT1gmt+kcq89G1gdOgCTdeC3uUV/E2H7chQP97
	ZTSw==
X-Received: by 10.220.153.2 with SMTP id i2mr2493636vcw.53.1366139463533; Tue,
	16 Apr 2013 12:11:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Tue, 16 Apr 2013 12:10:42 -0700 (PDT)
In-Reply-To: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
References: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Apr 2013 20:10:42 +0100
Message-ID: <CAJTo0LZzHf-Qc-Sv6OvV1GS2fm1PRXBzaC6F7FJekTM-YEoxdQ@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQlNe+G2bNXdWwYv8bA0i+exyAiPPfCsCU47fnKFSijPPB8EfEqT/ivtNRpmte1GtFbTZBgC
Cc: yocto@yoctoproject.org
Subject: Re: Repository to upgrade images
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
X-List-Received-Date: Tue, 16 Apr 2013 19:11:04 -0000
Content-Type: text/plain; charset=UTF-8

On 16 April 2013 20:02, Edward Vidal <vidal.develone@gmail.com> wrote:
> Are there any plans to provide a repo of pkgs where systems can be upgraded
> and new pkgs installed like other distro Fedora, CentOS, and rhel?  This
> would also require yum or the new software that is replacing yum.

Do you mean for upgrading images built using Yocto?  This is already
possible, the contents of tmp/deploy/[package format] is a package
repository.  If you use rpm you'll have zypper (danny and below) or
smart (dylan onwards).

Ross

