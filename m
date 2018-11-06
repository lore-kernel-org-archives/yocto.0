Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BB15E00950; Tue,  6 Nov 2018 12:25:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xerofoify[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A794E00950
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 12:25:27 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id o19-v6so10243360iod.3
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 12:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=fGytTI7pyB8GEWYduGM4NaANWll+98SAHTenrnOl5zs=;
	b=R3KC5+FuxYTZ5CrzMmQS4q3WJ/RKM7iMAmENPWfQTKU5FofPPG9hQRh8fveiHs27f+
	bxEdE1oIjYQ+dBp5EnsUWTeNznudqgk9O4ScLYhSx8cxj7IfXiYUOJVuPKScn3eGMsgR
	I0zWx8xk2POYzLllVxy1dc5AaOO9GHE3rC/2mRDNVtRQt41NVWGrvVLYZ96zGGB5kWer
	6XlEHZCcJpWAj81XpNb7px62x4pOE6IslHGCXaGwPZ0eThAKWh2rJNEAsxvzjT71yCE4
	IqWBmsc7z7ejBpRudt4rnfo3gIyC47zgaXT1Gm+0n2uGnPnMQZEbOtlqOZCYV8CAu74l
	JhWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=fGytTI7pyB8GEWYduGM4NaANWll+98SAHTenrnOl5zs=;
	b=nXNMZrruRldXabQBjTQqVRjUAVtvbnGUIaT0vFS90x+9WRvRtuN4kx8TEtzKZ5+XZm
	Fwq5//3NBcVsCfLxhFpmXHtzlMvO5+QJOtRobf7+WWWwJNIpHeJ0NrtQ/FsxJ8QyBONm
	yDPIAgYuE9ION/3FfKHn7XSOhq/K2cJnICSQJbGOAaxj/QDJ8dTXpfeTdAZrS51zRVVd
	0KgdB4IAaJ9xsjQW5T2yRAjPKvnaUEOdnUqvbNyLaI5dhAqoYaJ4eEx+J6ToYAH55Oq1
	yspkFY8IQnpyGgRluSZwr+nlLfc+EHNeS3DY2KzF7aJ0SVN1NSHmWwt/yVoP9JHMxdnZ
	Zjcg==
X-Gm-Message-State: AGRZ1gLJx0j7/Ig8enZGXEhjd0MHf/9aWrOy7Zk3FCuCwE51WCK6aQCe
	CyZybZ+jnzqKdUCG6rkdsLDsr2mw
X-Google-Smtp-Source: AJdET5deev3v+zPgRmeudyY+3gRzxFF0bSVtA7RMcMD384VHBtY4f309j7YhncHLQFcXGefustL8Ig==
X-Received: by 2002:a6b:e801:: with SMTP id
	f1-v6mr22313635ioh.19.1541535926164; 
	Tue, 06 Nov 2018 12:25:26 -0800 (PST)
Received: from [192.168.1.101] (173-230-163-230.cable.teksavvy.com.
	[173.230.163.230]) by smtp.googlemail.com with ESMTPSA id
	l18-v6sm7910365iob.24.2018.11.06.12.25.25
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Nov 2018 12:25:25 -0800 (PST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: nick <xerofoify@gmail.com>
Message-ID: <346cecd8-46aa-b720-3b70-82e3cefc8ac9@gmail.com>
Date: Tue, 6 Nov 2018 15:25:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
Subject: Yocto Add Layer Issue
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
X-List-Received-Date: Tue, 06 Nov 2018 20:25:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Greetings All,
I am wondering why this error is occuring:
yocto-layer: command not found

as I already sourced into my build with oe-init script and therefore add
wondering why it's not found. I checked the current developer manual and
that should work cleanly.

Thanks,

Nick

