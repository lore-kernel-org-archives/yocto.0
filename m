Return-Path: <gschmottlach@gmail.com>
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21CBBE017BE
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 12:54:43 -0800 (PST)
Received: by mail-wi0-f171.google.com with SMTP id hn6so1434716wib.4
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 12:54:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=76lTWGJthfYqaOsEp7Mjfw0cQJbrsFfqlAvTGi3FGlo=;
	b=Axz0DCiDmjzWVo3HxAIcpxr812J0RnORvCaukif2WlNQWCLJGJEZj0799sXigdniqB
	h2RmIcYbU5LCNYEUjlljrj4e64jVmbflN8N1pxLU9l7sdc31zy3gE2mqgY0YMiAZPcaZ
	GAVADOJ/7A8vtf+nb7DqoOZB0WmBub4Iqo/q22vKLOCpAP8AIN0ZQLeQfWB4XTXGuhgl
	iaHfGEudndXsq0AP/Uz/SLP8qqjLokCAvHMU/dDTUVPkG7TqwQk1uHbZ2xFQdhDUUSRf
	Z0gSecDYF5Y4HNoZ6/TZbiraqH63rI7gNfle2g+allR0qYuJm3NoLYbao5QVKCz9C0JV
	x8cw==
MIME-Version: 1.0
X-Received: by 10.180.219.33 with SMTP id pl1mr18202688wic.49.1384289681930;
	Tue, 12 Nov 2013 12:54:41 -0800 (PST)
Received: by 10.216.51.83 with HTTP; Tue, 12 Nov 2013 12:54:41 -0800 (PST)
Date: Tue, 12 Nov 2013 15:54:41 -0500
Message-ID: <CAMS2kBGUzoPjh6ZhG_QxwCGeYskUob0A0cGj7fPKOKO+xsa9pg@mail.gmail.com>
From: Glenn Schmottlach <gschmottlach@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: How to use Git sub-module fetcher (gitsm://) in a recipe?
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
X-List-Received-Date: Tue, 12 Nov 2013 20:54:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

I noticed a "new" fetcher recently that appears to support fetching
Git sub-modules from within a Git project. Unfortunately, I cannot
find any examples of how it's used from within a recipe.

There is a GitHub project I'd like my fetcher to clone that contains a
submodule. Obviously I'd like the fetcher to grab both the main
project and recursively sub-modules it contains. Can someone
illustrate how this is done, e.g.

SRC_URI = "git://github.com/fluendo/gst-plugins-bad.git;protocol=git;branch=sdk-0.10.23-hls"
SRC_URI +="gitsm://?????"

This repo contains a "common" folder which is a Git sub-module.

Thanks . . .

