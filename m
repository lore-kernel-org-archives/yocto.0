Return-Path: <hans.beckerus@gmail.com>
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86BFAE014FE
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 06:05:18 -0700 (PDT)
Received: by mail-la0-f49.google.com with SMTP id fs13so2989019lab.8
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 06:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=yPPO2NT7oOMnrNMUk+mOWjkRQ4AkFQlFilNi/TzhRd8=;
	b=jhzuR1RSFs8H1v5eYrhVfo8nKesP+CDDUGhBRDQ7IGBJswtLdyi0DPvh1W0GMmdEFP
	JiEjFAD6zulb8yz4Ur1ar4VwYhadwj/yjNUQaWYTFtYzcSUlhWcwE4LQw6J1WcOtyDHX
	zZ7SMLML7EEhV067KMZonjJT/+7WwZGZK0SYZSzfOQiNNm7hZYPpLypF6aXW/WN9jwX4
	iOWps18OJAZ5Z2duJKAXIKKfHhdCFyZjIIsJJYrdI0gyY3IVgHpR3BMip5XN+wMMQjT8
	87xl4D3XMrDq1Jmp8ku5fixBVpgRxJnWWyIUpEpUqKh/xj0G9fxgV9dUKr8JTBO7kwEE
	prtA==
X-Received: by 10.152.123.194 with SMTP id mc2mr7417039lab.7.1362920716857;
	Sun, 10 Mar 2013 06:05:16 -0700 (PDT)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPS id i3sm3496608lbn.0.2013.03.10.06.05.15
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 10 Mar 2013 06:05:15 -0700 (PDT)
Message-ID: <513C850A.3070208@gmail.com>
Date: Sun, 10 Mar 2013 14:05:14 +0100
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130215 Thunderbird/17.0.3
MIME-Version: 1.0
To: Philip Balister <philip@balister.org>
References: <513B9F69.5010109@gmail.com> <513BDA2B.1010704@balister.org>
In-Reply-To: <513BDA2B.1010704@balister.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FUSE user-space library
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
X-List-Received-Date: Sun, 10 Mar 2013 13:05:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-03-10 1:56, Philip Balister wrote:
> On 03/09/2013 03:45 PM, Hans Beckerus wrote:
>> Hi. Anyone started to look at including the FUSE user-space library as
>> part of Yocto?
> There are some fuse related recipes in meta-oe.
>
> Philip
Ok, I will take a look. Is the meta-oe 100% compatible with a Yocto 
reference system?

Hans

