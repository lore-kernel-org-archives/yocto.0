Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D938E0034C
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 12:41:42 -0800 (PST)
Received: by mail-gg0-f176.google.com with SMTP id h3so1286349gge.35
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 12:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=jbv6V1cU6XAJywtmX5cFXkHQQazwm3u3Nftt7oED3Rs=;
	b=Kx4yFTffOiWIpe2qNh+LajMsgTEjq9nrhMelluGN0OBZJSkoaO2b8m5KFFbzll/3J/
	4p00OX6XdhaNOs1DeNRGGg0FjFUrlzO5dQ4Su7tdZW32bLZN2cwfeh6cXgBvbaUvgC3W
	BIySjurlapkzVnAAv1L0a859KIeq7/9q571XVqHNC7BJ4ZD3yEl4f87OBJuLrWbmnCf+
	5OkVAWN7eouYgNJ/Rgtu8DOdgOmJDqS4vLIQUZ385P430qaobKQi150Uj/O8r7xah+CL
	giM8hdXJF+jrCXnGm3h9yB4TkhoXGf0sti8jDQHYsTPpr8sY4VMOennECME5BjoK83Mp
	ygnA==
Received: by 10.236.141.81 with SMTP id f57mr15423120yhj.13.1355776901376;
	Mon, 17 Dec 2012 12:41:41 -0800 (PST)
Received: from [192.168.0.54] (cpe-174-097-157-052.nc.res.rr.com.
	[174.97.157.52])
	by mx.google.com with ESMTPS id x9sm14224974yhl.17.2012.12.17.12.41.40
	(version=SSLv3 cipher=OTHER); Mon, 17 Dec 2012 12:41:40 -0800 (PST)
Message-ID: <50CF8383.4040904@gmail.com>
Date: Mon, 17 Dec 2012 15:41:39 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <50CF5A47.4040509@gmail.com>
	<CAJTo0LbWOq7J4McwEK0tC8wW---CJ9ToKz4zfeuFE3p_viXBiQ@mail.gmail.com>
In-Reply-To: <CAJTo0LbWOq7J4McwEK0tC8wW---CJ9ToKz4zfeuFE3p_viXBiQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Recipe differences between Danny and Master
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
X-List-Received-Date: Mon, 17 Dec 2012 20:41:42 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/17/2012 12:55 PM, Burton, Ross wrote:
> On 17 December 2012 17:45, Jim Abernathy <jfabernathy@gmail.com> wrote:
>> SRC_URI = "file://myaudios-1.0/myaudios-1.0.tar.gz"
> You don't need to specify the myaudios-1.0 section, that's implicit in
> the search paths along with the unversioned ${BPN} and files/.
> SRC_URI="file://myaudios-1.0.tar.gz" will find it and also work with
> every previous Yocto release.
>
> This must have worked previously because the search path logic was
> rather overcomplicated and unpredictable.  It was recently cleaned up
> but obviously you were unknowingly relying on undocumented behaviour.
I have not tested this back on Danny, but it seems to be past the point 
where it couldn't find anything. I have no idea how it worked in the 
past. I remember having to toy with it a lot.  I'm still not clear about 
all the paths in a recipe.  So I just copy others and try things that 
eventually work.

Thanks,

Jim A


> Ross


