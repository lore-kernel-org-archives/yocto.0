Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8748E011AB
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 04:11:55 -0800 (PST)
Received: from mail-gh0-f199.google.com ([209.85.160.199])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 31 Jan 2013 04:11:55 -0800
Received: by mail-gh0-f199.google.com with SMTP id r16so3646938ghr.2
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 04:11:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=aeYSFzknoC1jgN9DJ5JYEYjjF8tKp1KrhKF/0dZX5u0=;
	b=eHDMy7DfLW9VcwK3AHRooV58FoEuF2mrGMp3c5k5C7+De3oaS5LcQsLrb4Gpgbutlf
	KYtWAc6xTBqvtXirKJoofqmWNW4lBi5Gq9cls16UCuAS3ylNvKz7u2qCttsCTkc4DTWZ
	cgwoIvhdejLOkY+u+2rRRKQjKNJHtwzf+lxglwPXXMjRrwOfSakznbibtt1feuVIq5FO
	ECRmTdU6mUZ2AYC8DqeaSknhPh+fC3vXNTPD4ur/Nu3fk9ybH/TATJJDfw3bwKfUl26R
	/t3FhTNFyA6t0UgAuOBpsJ5SMG/5tGgU1cBoDS3cpjvX3AsMD6HRwMSe2V1KdzJoPgbW
	6myQ==
X-Received: by 10.220.115.72 with SMTP id h8mr7746121vcq.43.1359634314580;
	Thu, 31 Jan 2013 04:11:54 -0800 (PST)
X-Received: by 10.220.115.72 with SMTP id h8mr7746112vcq.43.1359634314345;
	Thu, 31 Jan 2013 04:11:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.131 with HTTP; Thu, 31 Jan 2013 04:11:34 -0800 (PST)
In-Reply-To: <586A6A48-0617-481E-8879-1AB5EC55F3DA@coote.org>
References: <586A6A48-0617-481E-8879-1AB5EC55F3DA@coote.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 31 Jan 2013 12:11:34 +0000
Message-ID: <CAJTo0LaQGuEbsFN2kF47VEvCEJUE3CL5xBkyTz=5iKO=PQTw9A@mail.gmail.com>
To: Tim Coote <tim+yoctoproject.org@coote.org>
X-Gm-Message-State: ALoCoQkNJVqEcr6HJC1G7wdQFwb9xRf50dhJt1UCY8UVJicq7pzoVUTwiMxOI0sYWrSglLh89ZNer2SXb4hpuT0xGNVBAq33UvrQ8N1ycZ6fL/e/A31GJQxKXtEoM11fEbBP0qAv8HhTCL3LiFLd+C6GYM+MyAZIxA==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: what's the best distro to pick for adding packages to yocto
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
X-List-Received-Date: Thu, 31 Jan 2013 12:11:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 31 January 2013 11:16, Tim Coote <tim+yoctoproject.org@coote.org> wrote:
> Hullo
> I'm trying to add a package to yocto (an AMQP implementation). There are =
various packaged versions, so I started with the one that I'm most familiar=
 (RH). However, it's pretty clear that yocto's not based on that as the ini=
tscripts are totally different and missing the framework (there isn't even =
a /etc/rc.d/init.d, although it looks like there used to be).
>
> What's the best starting point for picking a prepackaged version for a di=
stro? debian? suse?

Historically Debian is fairly close, but these days that isn't really
true.  It's probably best to look at an existing init script to see
*what* needs to be done, and then copy the style of existing scripts
in Yocto for *how* to do it.

Ross

