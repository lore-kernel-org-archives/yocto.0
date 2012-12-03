Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BBE4E00533
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 10:59:45 -0800 (PST)
Received: from mail-pa0-f72.google.com ([209.85.220.72])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 03 Dec 2012 10:59:44 -0800
Received: by mail-pa0-f72.google.com with SMTP id fb10so5878652pad.11
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2012 10:59:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=rwIKcqFKQ/lsHmwFLVKqwwrPk44JBKT154sp58i3XIQ=;
	b=nlquuwH0J3KNSlz+qJXGwX10Hs0AaKflp8adGnL/tGPeZl3EeRcUurfX0VsMQHxdJQ
	RwSmeLNSqwlpBb4Dq0xgV2hGSs5fUrQryT3PoUIHhrt6VMmqPgAifM404KttlIHiMXM0
	TKtcsMsm297C+np/bojeXArpjU2XNNLEACEuvypzPLKJXa44pB9aSAAqG6j8ZoCTdPdg
	Oz56WY/b9iPnb22FXWRRBaLLK+RVx1ctgv8ExLS342h5BmE2vGzEYlNjuUQaPCpQtkIO
	oVKzGYNxUUEyDXY9ppUoTp0K7ZNgT8KZvBo2UKz4/Y+6q1bVLSCUDbWWyNSuGO71z26k
	A5yg==
Received: by 10.68.235.208 with SMTP id uo16mr31368213pbc.65.1354561179806;
	Mon, 03 Dec 2012 10:59:39 -0800 (PST)
Received: by 10.68.235.208 with SMTP id uo16mr31368198pbc.65.1354561179729;
	Mon, 03 Dec 2012 10:59:39 -0800 (PST)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id x6sm8460334pav.29.2012.12.03.10.59.38
	(version=SSLv3 cipher=OTHER); Mon, 03 Dec 2012 10:59:38 -0800 (PST)
Message-ID: <50BCF69B.4010906@intel.com>
Date: Mon, 03 Dec 2012 10:59:39 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50BBDB70.2040803@intel.com> <50BCE4DB.3070105@r-finger.com>
In-Reply-To: <50BCE4DB.3070105@r-finger.com>
X-Gm-Message-State: ALoCoQlmOa5Y71VH8H5tJadCQzpwTOWAdHOsprfzL5FxLv1HvPdDSzjkw1d65G3x+aH2bOi676Jq+/UdImA2SZy6FyWK2WpFMNDX4ekvBTp59LyF1S6l8JejLkMj5OaCbc2Q50HRw7/iKbn2NDQaE7HFtD5Ej3TCOA==
Subject: Re: Use of BBPATH in a layer.conf file.
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
X-List-Received-Date: Mon, 03 Dec 2012 18:59:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/03/2012 09:43 AM, Tomas Frydrych wrote:
> On 02/12/12 22:51, Scott Garman wrote:
>> Robert Day has brought up an inconsistency in the way we append to
>> BBPATH within a couple of our layer.conf files.
>>
>> In meta-hob, meta-yocto-bsp, and meta-intel, we do:
>>
>> BBPATH := "${BBPATH}:${LAYERDIR}"
>>
>> but in meta-yocto, we do:
>>
>> BBPATH := "${LAYERDIR}:${BBPATH}"
>>
>> Unless someone explains to me that it's necessary to use this different
>> ordering in meta-yocto's layer.conf, I will submit a patch to make this
>> more consistent.
>
> This meta-yocto setup is intentional (there was thread about that a
> while back). meta-yocto is a distro layer, and for any distro layer it
> is reasonable to enforce its own precedence over any other layers is may
> use, and meta-yocto chooses to do this. Non-distro layers, including all
> bsp layers, are expected to always use an append operation so that they
> can be stacked together.

Thanks for the concise explanation.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

