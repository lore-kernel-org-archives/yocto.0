Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27637E006B0
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2012 09:27:47 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsp19 with SMTP id p19so491237qcs.35
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2012 09:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=qrq4UPeMvXDqLhAVOJqw5EWzoWJjvQ8yS5yIQZic4cw=;
	b=V3WCQjvY4yJjAHxsYFUdp+2gggnnnjdY5VW2DLUr84oz1NkXqp0yw+kM92wQ8qCk4Z
	thCCsOpkbBrWcLIuUFUVK9g/tw+Aus1uSNXuadDFqVFZBflxV8FlDZgDF1Ny2lOhaJH3
	bIUKLvw4w9bYcyNF3uMr6rGBDZogDlLybAV1U=
Received: by 10.229.78.165 with SMTP id l37mr851171qck.126.1326475666389;
	Fri, 13 Jan 2012 09:27:46 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	j18sm17724933qag.17.2012.01.13.09.27.45 (version=SSLv3 cipher=OTHER);
	Fri, 13 Jan 2012 09:27:45 -0800 (PST)
Message-ID: <4F106990.7080208@gmail.com>
Date: Fri, 13 Jan 2012 12:27:44 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: question on poky and git interaction
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
X-List-Received-Date: Fri, 13 Jan 2012 17:27:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

under the poky directory you git checkout of the branch you want to work 
with, then you clone meta-intel and within that directory you checkout a 
branch.  if you needed to use git for you personal project, you can't 
put it at the same meta-intel level, right? Only one per directory??? I 
would guess that you'd need to create your personal git clone below 
meta-intel; something like meta-jima.

Does this sound correct??

Jim A


