Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5F94E0172D
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 02:13:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9M9D1dV009542
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 22 Oct 2013 02:13:01 -0700 (PDT)
Received: from [128.224.92.209] (128.224.92.209) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Tue, 22 Oct 2013 02:13:01 -0700
Message-ID: <5266419C.8010200@windriver.com>
Date: Tue, 22 Oct 2013 05:13:00 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAFyqS9oRTjDMHj=e9inCN7RD52BuHOGA16+Ko+326BLkV3pFDQ@mail.gmail.com>
In-Reply-To: <CAFyqS9oRTjDMHj=e9inCN7RD52BuHOGA16+Ko+326BLkV3pFDQ@mail.gmail.com>
Subject: Re: lttng uplift
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
X-List-Received-Date: Tue, 22 Oct 2013 09:13:05 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-10-22 04:28 AM, Hans Beckérus wrote:
> Hi, in our current tree lttng is on a v2.1 baseline. Are there any
> plans to step up to a later version, such as 2.3 any time soon? We
> need some new features coming from that version.

We will definitely be updating lttng in oe-core master, in the not
to distant future. Backports to released branches are not necessarily
planned, since we really try to hold to bug fixes and not features.
But cherry picking those changes to a local release branch would be
easy enough to do.

Bruce

> We are currently on Yocto 1.4+snapshot-20131022. Or should we start
> looking into doing this in our own meta?
>
> Thanks.
> Hans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


