Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADBB8E0070B
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 09:46:53 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 01 Aug 2012 09:46:40 -0700
Received: by pbcwz12 with SMTP id wz12so1390572pbc.25
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 09:46:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=fFJltUucmuNUX+ii0IlJKHDhuQyuxpwVCPip3A+be3U=;
	b=fK7qMAmYaiiorOdezlgWFYUaJiopvZhOJkiYzjAzb1ADI8WqOarb4QC+29KKpL9ufd
	X3z83RavI3PQduo1y73SGkuxK2Qwkpoixqz0ftOlUYPEtIVVEQU8vG1cnTvnvJlr/M3Z
	CNWSxakWiEH+BgkJ+/CwYDDmnuyznveSPbp82U9WMqT8NjGUqBnA9CH7nktuLkPeXyQ9
	sjU/PAS05laWdiQ5Y6pdRksvaTwhSDsbxUtqBfPIIKYqc5NcEx5CkZP39XCNY89lSZk0
	XqETIdy5OqTId0USFkSSX8t/GFZqRve+WRQcuXrx+wf9/NbfXuYAjDiN4QdLdefPrJ9K
	mP6g==
Received: by 10.68.234.6 with SMTP id ua6mr53797635pbc.117.1343839599392;
	Wed, 01 Aug 2012 09:46:39 -0700 (PDT)
Received: from [10.1.10.192] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id qp6sm2897995pbc.55.2012.08.01.09.46.35
	(version=SSLv3 cipher=OTHER); Wed, 01 Aug 2012 09:46:36 -0700 (PDT)
Message-ID: <50195D66.2020503@intel.com>
Date: Wed, 01 Aug 2012 09:46:30 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1343766958-5092-1-git-send-email-sidebranch.openembedded@gmail.com>
	<74172ECC-6F8E-46A7-9336-C3D92046107C@dominion.thruhere.net>
	<CAMvUbCwZEiOQU=r5YYLtbbn7V1acgyYNN1i8ySJgRSSVSp8+mA@mail.gmail.com>
In-Reply-To: <CAMvUbCwZEiOQU=r5YYLtbbn7V1acgyYNN1i8ySJgRSSVSp8+mA@mail.gmail.com>
X-Gm-Message-State: ALoCoQlq+iyL7iqgeEnGApPAJGI1EeF0rKH3K/rMySlX9nn8JP2JtbjsgDtFXlMTJkDZ0qNGknYg
Subject: Re: [for denzil] kernel.bbclass: Copy bounds.h only if it exists, needed for 2.6.x.
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
X-List-Received-Date: Wed, 01 Aug 2012 16:46:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/01/2012 02:08 AM, Leon Woestenberg wrote:
> Hello Koen,
>
> On 08/01/2012 08:55 AM, Koen Kooi wrote:
>> Shouldn't this be sent to the oe-core list?!?!?
>>
> It was intended for the denzil branch ([for denzil]) of Yocto, that's
> why I sent it to yocto@yoctoproject.org.
>
> If that was wrong reasoning, let me know, I would be glad to change
> workflow if I know why.

Hi Leon,

Since Yocto is built upon oe-core, changes to files that live in oe-core 
should really be sent to the oe-core ML. Our workflow is then to pick 
things up from oe-core and move them into the poky git repository.

Both oe-core and poky have denzil branches this patch applies to, so 
you'd still make mention in your subject line that the patch is intended 
for denzil.

The main reason to submit patches to the Yocto ML is if it's specific to 
the meta-yocto layer you find in the Poky git repository, or to discuss 
overall Yocto issues.

Just some things to keep in mind for the future.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

