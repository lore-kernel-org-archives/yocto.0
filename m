Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CF10E0073D
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 07:20:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=38xK6ieDu+mqrRI5geNWzkKnuQrX2Si9B7RMA+v90wM=; 
	b=Wwbw28Vn4kFn8dhRGhYW5r7XpVT6Av9YnLQ3QRpqHxRskChwff5CKBov0dTAZaWRXoIsFHg6e/cRfcFCmpfKlmIai6IsOx02U8nqMJkCZq4nj5f9zI/iD7LSauvGbZcY;
Received: from [109.224.129.17] (port=38012
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1TkcUD-002IGZ-1h; Mon, 17 Dec 2012 15:20:09 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAJTo0LYTdoSeuoCQXYn23Xn8oY+9kXq5Qm0G-yV=bzZ6UuwXtw@mail.gmail.com>
Date: Mon, 17 Dec 2012 15:20:07 +0000
Message-Id: <99DDC49C-484B-4736-AF0A-71840CECF682@keylevel.com>
References: <6D85911C-A82F-4029-A41E-D289D8050C79@keylevel.com>
	<03D0A6FB83364ABF99FCB0481EA3EE0F@intel.com>
	<D082E3D9-189B-4C66-A272-F28BB743D309@keylevel.com>
	<6E2C4456B0C04C20952CCD8694B0B56F@intel.com>
	<BDB77FD9-2563-4703-BFA8-707101CA366D@keylevel.com>
	<A5D6B647-03DE-4ECD-9610-7FBE100684A7@keylevel.com>
	<CAJTo0LYTdoSeuoCQXYn23Xn8oY+9kXq5Qm0G-yV=bzZ6UuwXtw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: libva failing for mp4 using gstreamer under 'danny' with cedartrail BSP
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
X-List-Received-Date: Mon, 17 Dec 2012 15:20:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Ross,

On 13 Dec 2012, at 23:58, Burton, Ross wrote:

> On 13 December 2012 23:23, Chris Tapp <opensource@keylevel.com> wrote:
>> Unfortunately, adding xvimagesink hasn't helped. I also still don't =
really understand why webm and flv work ok.
>=20
> They're probably using ximagesink, but depending on your pipeline
> you're probably doing the decode for mp4 using VAAPI, which has
> special requirements on sinks.

One question - is that also true for 'fakesink'? I thought that was =
supposed to accept any format, but it also throws the same error.

My pipeline is just uridecodebin ! fakesink

> I'd throw in some debugging to inspect the pipelines constructed for =
flv vs mp4.
>=20
> Ross

Chris Tapp

opensource@keylevel.com
www.keylevel.com




