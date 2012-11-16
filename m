Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C0FEE003DA
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2012 10:20:37 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so221682lah.35
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2012 10:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5gDxn0PVqUqVlLb5ADOZDgI7TOmfJ5vVDXsRXvVBA3M=;
	b=adPaTKh8I0yD/QuYFHvsL0xOo/0AgRPZBGnWJZ1DNU5cNR4N1dtedpQw/5/HIQWAfw
	y4Kq/xO50EmdGqf7bLsRFAI8lcqpGTsjgy+s8ZfvmJu4hRPkanyO9EYXkNMbDAnE5bPV
	bcYDuhpOVYWCE/2EYfIAIHiLIo5H3w1y8BzP4i//18vrfw0hd/0NT1jNsshZNiR6252b
	jCfvQNm2VUG0ajcTYWi990wKhBqQn5XfXNPcOf1Big0CzbUDWSUcTkZ8EkLq1zVT5hN3
	Iizl98QHDnIZ5D1DS7IKyDf1esa+ryWM5rI0tHEVl4vnuiiG/tmN/GLctq3tJT4PalTh
	4B+w==
MIME-Version: 1.0
Received: by 10.112.24.6 with SMTP id q6mr2357635lbf.24.1353090035644; Fri, 16
	Nov 2012 10:20:35 -0800 (PST)
Received: by 10.112.117.194 with HTTP; Fri, 16 Nov 2012 10:20:35 -0800 (PST)
In-Reply-To: <50A67F42.2000305@intel.com>
References: <CAKL3bWW5ieSi9g9G9QRx7u2rEkoOCqSF6kzLevOdG7LjYxc6=A@mail.gmail.com>
	<50A1F05E.5080602@intel.com>
	<CAHUNapQjLyVS-FWa914ty2Y+NAOLtZ3Y2njWQ1=AEaxX1SfhOg@mail.gmail.com>
	<50A67F42.2000305@intel.com>
Date: Fri, 16 Nov 2012 13:20:35 -0500
Message-ID: <CAHUNapQL45p9JL2y5UVGaw5M0X=2+piC+_w3HVUy-o3dHSp9vw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Slides from the Yocto Developer Day
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
X-List-Received-Date: Fri, 16 Nov 2012 18:20:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

Okay, thanks for the comments.

I also want to highlight the change from "task-core-boot" to
"packagegroup-core-boot" for anyone wanting to try these steps on the
latest (although I'm not sure which string denzil prefers).

