Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f44.google.com (mail-vb0-f44.google.com
	[209.85.212.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38935E013E3
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:12:13 -0700 (PDT)
Received: by mail-vb0-f44.google.com with SMTP id e13so1442907vbg.31
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=U4zO0U9VRwT4L51xVTzf0AYeLcCXRbzdthNHPLCj7Ro=;
	b=ghADAtRCip+xEzoJRmCeqZwPONByz02aXjTIR4XyK19hdxTfjlCxDCqgbB4u6iSeo6
	VISSq/ajklV3TA/FwUiNjQfV4h3bpe4s43qOM0tVw6etitOKElAc1eK0jzdmN83Ocank
	Vr0/F3LEMsCFu0gUp5vWbkJDg+s4tq6tkatqc+AuUyW09Tx2pd74teiu1PeUa5uKxCUe
	5z/mrzZtsV1NVSDyu3GZuWgftIIKwVd49wlFCgAtFP7JP0ZMOucCwutVeTs4s6c4GEoi
	LNHXjERVnO3dV80FP1EuTgmSPtsjk7LD0KNrN94zpLBktowxbn3yZQpQIR7r+zMUCmZe
	I2pQ==
X-Received: by 10.59.3.198 with SMTP id by6mr3112951ved.39.1369242732691; Wed,
	22 May 2013 10:12:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Wed, 22 May 2013 10:11:52 -0700 (PDT)
In-Reply-To: <CAGxOggF_iWKtZcpmvqtuvBq6unr5S7tU9fHp+Hqwg2ZH1aV5nA@mail.gmail.com>
References: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
	<CAP71WjzJjYu5Ft2hAkPs77RRf6=mbkoFbFK+XGTNnW39DFxyJg@mail.gmail.com>
	<CAGxOggF_iWKtZcpmvqtuvBq6unr5S7tU9fHp+Hqwg2ZH1aV5nA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 May 2013 18:11:52 +0100
Message-ID: <CAJTo0LaBaL8cTFbPw-=1dJg6OE3z9da3=TwQj-Lp+3FyPW2FBw@mail.gmail.com>
To: varun bhatnagar <varun292006@gmail.com>
X-Gm-Message-State: ALoCoQkHfKT+UdZsszpNW9uYATw0Wa4peYsBV4l7A0mapVNW9jPOcAuFlwaDv6Zq7TdqP0OHZp3N
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: vnc server running on ::1:5900
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
X-List-Received-Date: Wed, 22 May 2013 17:12:13 -0000
Content-Type: text/plain; charset=UTF-8

On 22 May 2013 18:06, varun bhatnagar <varun292006@gmail.com> wrote:
> Thanks for the reply Nicolas....
> But neither I am getting any qemu window in GUI nor any console. It is
> getting stuck there itself (as shown in the screenshot). But in the video
> which is available on the yocto site, when runqemu command is given one qemu
> console gets launched where in user can see the image getting booted. But in
> my case I am not getting anything and it is getting stuck.

As Nicolas said, that's expected.  You didn't have SDL present when
qemu was compiled, so it's using VNC to display the UI.  Connect a VNC
client to the address it gives you, and you'll see the UI.

Alternatively, and this is how the video was done, if you install SDL
and re-build qemu-native it will display a window itself.

Ross

