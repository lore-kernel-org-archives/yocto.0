Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 27E9FE006AD
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 13:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=qwReiCcNf2bBXYzYeueW+Ise4ZrA0WR/fWAGLI3dN/Y=; 
	b=nEyax9yz1OewC/Jq3JJsr1THYGPFBSyQMj/ZUom7y+shtRRyVmebKJl4dVQA8K7xdGo5FVZJFpgYLoFcHYgNYy+K2f7mTxz1p9aIgXocQwEIHKoZTcuclbjkgz+Kxfb/;
Received: from [109.224.129.17] (port=20267
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1U5NPY-0031Fs-Ez; Tue, 12 Feb 2013 21:29:08 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAJTo0LYDu1wtoDQJopGhx9_6r7fKwRpFezn73NNm=myQu43OCQ@mail.gmail.com>
Date: Tue, 12 Feb 2013 21:29:06 +0000
Message-Id: <0EED5F91-E4E7-4B60-AD7F-B03CFAD8CD22@keylevel.com>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
	<719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A717A89@ORSMSX101.amr.corp.intel.com>
	<E89AA40D-0FA6-4BC2-99D2-9548F06BDA5D@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A718D1C@ORSMSX101.amr.corp.intel.com>
	<000001ce08e6$9b51c250$d1f546f0$@annabooks.com>
	<1360699012.1516.26.camel@empanada>
	<CAJTo0LYDu1wtoDQJopGhx9_6r7fKwRpFezn73NNm=myQu43OCQ@mail.gmail.com>
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
Cc: Darren Hart <dvhart@linux.intel.com>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
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
X-List-Received-Date: Tue, 12 Feb 2013 21:29:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 12 Feb 2013, at 20:54, Burton, Ross wrote:

> On 12 February 2013 19:56, Tom Zanussi <tom.zanussi@intel.com> wrote:
>> It probably wouldn't take much to bring it back - basically the pvr
>> graphics driver, which I assume is one of the most important features =
of
>> this BSP for users, is stuck at kernel version 3.0.  If everything =
else
>> stayed the same, forward-porting the GPL'ed kernel portion of the =
driver
>> would be all that would be needed to get it working again.  We've =
done
>> that routinely for other drivers such as EMGD, so I don't think that
>> would be too big a deal.
>=20
> Alternatively there's the fully open source but non-accelerated
> graphics drivers.  This would let the BSP survive, but is anyone
> (Chris, I'm looking at you here!) using CDT in a situation where the
> open 2D driver is sufficient?

Not me ;-) One of the main reasons I moved 'here' was because we needed =
the graphics performance.

> Ross

Chris Tapp

opensource@keylevel.com
www.keylevel.com




