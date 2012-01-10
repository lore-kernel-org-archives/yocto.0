Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE7DDE0134D
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 15:03:49 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 10 Jan 2012 15:03:49 -0800
Received: by iadk27 with SMTP id k27so142930iad.25
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 15:03:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.243.2 with SMTP id lk2mr27628081icb.8.1326236627000; Tue,
	10 Jan 2012 15:03:47 -0800 (PST)
Received: by 10.50.237.98 with HTTP; Tue, 10 Jan 2012 15:03:46 -0800 (PST)
In-Reply-To: <CAPhnLPB9r+M47+_tNYYthe5fDr3VDeD6A255L790BgUsbybszw@mail.gmail.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257C184A@ORSMSX101.amr.corp.intel.com>
	<CAPhnLPB9r+M47+_tNYYthe5fDr3VDeD6A255L790BgUsbybszw@mail.gmail.com>
Date: Tue, 10 Jan 2012 15:03:46 -0800
Message-ID: <CAPhnLPBTVEUH-ZCq+ZXftBgMzX3kU1Z-vCY8p2CY5OxS75S9JQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Liu, Song" <song.liu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto SWAT team kickoff
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
X-List-Received-Date: Tue, 10 Jan 2012 23:03:49 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 10, 2012 at 2:59 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> Targets:
> We currently have 5 yocto autobuilders that are used to run nightly.
> ab01, ab02, ab04, ab05, ab06. Each of these run two build slaves.

Quick point of clarification (since I don't want people confused). The
above should read:

"We currently have 5 yocto autobuilders that are used to run the full
nightly build."

This is different than the buildset "nightly" which is seen here:
http://autobuilder.yoctoproject.org:8010/waterfall?show=nightly

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

