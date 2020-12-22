Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
 by mx.groups.io with SMTP id smtpd.web08.9335.1608629195958344887
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Dec 2020 01:26:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=RHIxckhM;
 spf=pass (domain: konsulko.com, ip: 209.85.167.179, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f179.google.com with SMTP id l207so14167729oib.4
        for <yocto@lists.yoctoproject.org>; Tue, 22 Dec 2020 01:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=YXi6dECoL1NjlL+eWQ142KD8RJU54MaEvSZidc+GwsE=;
        b=RHIxckhMK+jhrVZPG68hhzZ9by+OAnyReDoDnoxCfnIjkiYNNsnAWN0Gi+1dyNzTX8
         mwvIRFS+7R8byhsLsm6+bjjOKNYg856VNp4a/QjB3P+7iu5bdHvMn80uK/lozmRR1lQf
         Ns/lFaVpnvz4oJsWj4T93ZIsE72WdHGSzTG+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YXi6dECoL1NjlL+eWQ142KD8RJU54MaEvSZidc+GwsE=;
        b=ccj34+z6JdIbAYEavujfu7ln1CI82Alb8Db/eoA3i871aqdGb5B4D4saROdTSuJPbf
         aPrXkcAzs3Sievv5BqpgiPG1i5MWxtMN06Yea5ZA0CPixDNd3HG7tUHuIEVHSFkxjHwJ
         NIcx45LxO6UcJDDMzjmVmomHee3ZN+pyf1QUZJmIXb6uiycex4RdaVkBkOWUe/1ZOXGq
         J5QqUShqnSqw4M/Lds1e9Fh0VjZ/phaprozlUdvqu0H9Q+ENszCr2rvHFAYwIc3jztbj
         ffFARj/6PeJ+PF+RuWxqVqbOEStgTfUEeSoDvdMcXGQ4lWI2cOfx6g2qzhlI23Ys3Bo9
         4CYg==
X-Gm-Message-State: AOAM531HEGAdYjBwwVRsig4l7dCScEYiP69oluEH8SNG54VRmLDSqINm
	u1iSi2JsmlKeOUZB1sfonpHfNPZawJ4zkCVVUFiWuCBu+l2pBA==
X-Google-Smtp-Source: ABdhPJxIjIqTCuD/maGk6xtqLdPPskdeGL2mzVdL4CQqxMbymlNGsxUfMzSh+8QFPG2drRaCP75W27BfBY01W0H+6jk=
X-Received: by 2002:a05:6808:a95:: with SMTP id q21mr13895774oij.6.1608629194926;
 Tue, 22 Dec 2020 01:26:34 -0800 (PST)
MIME-Version: 1.0
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 22 Dec 2020 09:26:25 +0000
Message-ID: <CAM9ZRVt9HQA6ZXOPjGbNeabYHkddj6hdYQaaXKqM5jM05o7Jwg@mail.gmail.com>
Subject: Automatic addition of trailing slashes on layers.openembedded.org
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Hi folks,

Working on the docs recently we noticed that there is no automatic
addition of a trailing slash on layers.openembedded.org when it's
needed:

https://layers.openembedded.org/layerindex/branch/master/layer/openembedded-core
- shows "Page not found".

https://layers.openembedded.org/layerindex/branch/master/layer/openembedded-core/
- shows the layer correctly.

Is this something that can easily be fixed?

-- 
Paul Barker
Konsulko Group
