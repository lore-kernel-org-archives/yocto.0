Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0F82E00888; Tue, 13 Jun 2017 11:32:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E7BDE00888
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 11:32:05 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id v18so20231299pgb.3
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 11:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=mcpxJK8FyLERuwof95GzaFUItk7DuUckMaXtcG/C5z8=;
	b=KrB3q1I1FO9PMXyavPPvPwA6edxVTsjDOvDdAQ6UDpaPLEBEBzKyhFXAYXI7lVGFDe
	XyHiu/ZPb20SLMO+hQq8DAKG7XNyspGs03tCmWgqMNP38cWw3rbYDFDxZcbEWMYSp+Kc
	hIdF1Xzf9V3rTARP/7uNguFyC9CaoYaUOiZjzjXfUsoP4rhZc1gQxiQuPbSx1NOtKPzA
	alP2r3E5Ud46dZss0pc0ItkaRGX7ulIDcFK4b9QqZPchgBv1AXib/qffgWy5nVC3x6Nr
	nUlKb5a2/cDKh0727FBJQAinqpqULSGsBFrVk00eNZtZI9THPaybcj3wfmZHipLbsDuD
	KmpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=mcpxJK8FyLERuwof95GzaFUItk7DuUckMaXtcG/C5z8=;
	b=m+dtX+1FTghg7F7tdSxxjraFWSz+sCrb3zEdbPqs4sZmlELoEbO4uwIhzGI8hAjljg
	P8M/KO4XZUe0oFPL1X7duI0Ko5BlssUtDDUginVhhjruTKrVrgd4bybg2OdFs5MNohid
	v3i+4Nwbh3U4u0F1l+otK8G5nUKEmsePaid6bSxKx9rcoK7IwTVu1JB7n84ONP8d2zz0
	M+UmuS3VH+pZ/AEROS5+KB2EkIw/q0fpFsep/58h9CGOyTo56QuVWJ1LkvxdyRHbhpBB
	31UDNNKO0Sf5B7dzSoOzu8E+ZWQ1wbOYQcZ5OvHkafnJmQeoqgk06EQlpLKYbW4+Dq5G
	Hwxw==
X-Gm-Message-State: AKS2vOzkIMscsRONsykr58Aa4bWGC0tWkE8EWl6KOZjAoQ3/wwSKmPYO
	+rY2sYs1VyeprQiCkSQ=
X-Received: by 10.84.174.3 with SMTP id q3mr1088729plb.52.1497378723979;
	Tue, 13 Jun 2017 11:32:03 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126]) by smtp.gmail.com with ESMTPSA id
	z79sm23840686pfi.43.2017.06.13.11.32.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Jun 2017 11:32:03 -0700 (PDT)
To: yocto@yoctoproject.org
From: Jimi Damon <jdamon@gmail.com>
Message-ID: <8d6fe5c7-dbfa-7a17-071c-1330cdf3a672@gmail.com>
Date: Tue, 13 Jun 2017 11:32:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: Preventing a package from building
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
X-List-Received-Date: Tue, 13 Jun 2017 18:32:08 -0000
Content-Type: multipart/alternative;
	boundary="------------9A9686CC4BA32F487ABC4973"
Content-Language: en-US

--------------9A9686CC4BA32F487ABC4973
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,


I tried using the PACKAGE_EXCLUDE = "chromium" in my local.conf file but 
I'm finding that my build it is still trying to build this package.


Is there a way to prevent this build stage from occurring ?


Thanks



--------------9A9686CC4BA32F487ABC4973
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="Monaco">Hi,</font></p>
    <p><font face="Monaco"><br>
        I tried using the PACKAGE_EXCLUDE = "chromium" in my local.conf
        file but I'm finding that my build it is still trying to build
        this package.</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">Is there a way to prevent this build stage
        from occurring ? <br>
      </font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">Thanks</font></p>
    <p><font face="Monaco"><br>
      </font></p>
  </body>
</html>

--------------9A9686CC4BA32F487ABC4973--
