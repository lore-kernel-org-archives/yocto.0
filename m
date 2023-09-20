Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A4A9C04AB4
	for <webhook@archiver.kernel.org>; Wed, 20 Sep 2023 16:48:57 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.543.1695228531619769352
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 09:48:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20230601.gappssmtp.com header.s=20230601 header.b=Q3OlRuqW;
 spf=pass (domain: baylibre.com, ip: 209.85.218.43, mailfrom: jstephan@baylibre.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-9ad8bba8125so945959566b.3
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 09:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695228530; x=1695833330; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3hI6SeTTRzWFmvRAXdsPohZ3kr3lFo2hYtuzV4vYwKM=;
        b=Q3OlRuqWXWOqq4AV5rVClsWmNteXx0V7BpLjpyHPqzKDIBy5yLtX4kXsnYl22x7faE
         HMPnrN24ZqqBoA5QTr3gCd5jTh4ge24D/ZRKgN5vKjf9tYcI/D88XV+oR8/NLpkaRFBP
         f13mdwUucSfIarOghXXcPLx8yJ8xddx06FMK9sOppofEebED/m96/vxOzY73/P79W3RV
         WnWl5OmNGsOR8em7ipXC41g/DhooQzTF35QNbHj1PU+sf4fdLTU6OlgFCVMjvJ7/9GiS
         6My57v8mZyxaaVH3DzFy54//k6rFOv6XWH9xW1fSIvjEO9AOLQ2QoX0I0l08cVoyfdE3
         IXMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695228530; x=1695833330;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3hI6SeTTRzWFmvRAXdsPohZ3kr3lFo2hYtuzV4vYwKM=;
        b=AUj1bs0zSAYZ/0DZC4qIu66Gx3azXlii2c3e7N+jIyQ0GyIfgKK4w881UibANXb1uW
         u+Mj9K5hFcvpVBF1oG29m3uoTEzk45Vn9VWrAnfFD8JBPzb1+wuTWEfFPFWhCnR5lXpp
         1X0lTvvcgW56oDxeuyMNUx/HHvqiwTW9BumaLCZ8zhAD/G+WeVHQoCmikSGX7KwwkFg8
         PFYyUThaF62TYwFUHmUjV0PPHb9abO/oeD47RbTljsH+/2XQ3MHbKNs6txWzPavqmnM1
         Tlmu0dGMuGnNnEBMMgAmzu+V72x5AVyXd64WbO8YNiw73XqmvFy7keW+WqCj2EwuaZ91
         YdNg==
X-Gm-Message-State: AOJu0Yx/XTCsv0vkOU7k4Q2PgF+ykV+arij0tczZYt5Nh5svgsvDmxFY
	bV34QbfjyORZ3HZqweBBXGYeWSudySM6L18RlR0t1GpTBg/fCPAlBVg=
X-Google-Smtp-Source: AGHT+IHovv5hrklNOnlxQZfe8dsINcIwi2jHrRipq65SDq24NK+1H4UQROSn3V4bTx/2wqxwqYZQW63LrUgYAF72PLw=
X-Received: by 2002:a17:906:530c:b0:9ae:4096:61bf with SMTP id
 h12-20020a170906530c00b009ae409661bfmr2763617ejo.66.1695228529607; Wed, 20
 Sep 2023 09:48:49 -0700 (PDT)
MIME-Version: 1.0
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 20 Sep 2023 18:48:37 +0200
Message-ID: <CAEHHSvYa+4opuw5QTcEwDWPMjLzcJd12P5rX_jqbMx_Dc4O4gw@mail.gmail.com>
Subject: [RFC] recipetool create to support pypi project
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 16:48:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61052

Hi all,

In the scope of the RFQ, I am currently looking at bug #14737 (adding
support of PEP-517 in recipetool/devtool).

I am quite new to the recipetool/devtool tools and I have several
ideas I would like to discuss before going into development that may
not be appropriate/necessary for the tool.

As of today, from what I understand (please correct me if I am wrong)
'devtool add' supports the creation of recipes for python modules from
their download tarball so something like: devtool add
https://files.pythonhosted.org/packages/e4/29/f1e7113ca4632283a76cdbe40b62be860d268fdc0e8eab7216ffaf2aa0ef/subunit-0.0.0a0.tar.gz
works, but:
- the created recipe does NOT takes advantage of the pypi class: the
created recipe will have the SRC_URI variable instead of using
'inherit pypi'
- user has to find the url of the tarball

I think it would be really easier for the user to just use: 'devtool
add https://pypi.org/project/subunit/' This will have several
advantages:
- easier to use
- fetch latest version automatically
- easy to fetch specific version with --version
- can easily detect 'pypi.org' on the url and inherit pypi
- can easily parse the webpage for several informations such as
author, summary, homepage, bugtracker page .. (I know some of them can
be extracted from  setup.py / pyproject.toml, but not always)

Looking at the create_recipe function of
scripts/lib/recipetool/create.py, we can see that code is really git
oriented even if you use a tarball, you go through a bunch of 'if'
that doesn't apply.

I think we can modernize this part of the code. This would also be
useful for perl modules and cpan or rust modules and cargo...

What do you think? Is this something that is worth investigating and
implementing?

Cheers
Julien

