Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
 by mx.groups.io with SMTP id smtpd.web09.7650.1605201290694415231
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 09:14:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@evogro-com.20150623.gappssmtp.com header.s=20150623 header.b=Z7kCasc+;
 spf=pass (domain: evogro.com, ip: 209.85.161.42, mailfrom: paul.adams@evogro.com)
Received: by mail-oo1-f42.google.com with SMTP id g4so1486797oom.9
        for <yocto@lists.yoctoproject.org>; Thu, 12 Nov 2020 09:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=evogro-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=s55qRbTV0i9qOWnz3BS/7/H0Svhwy5FRWkIauRWmgEk=;
        b=Z7kCasc+dtyvOsC1E/nsbPIvl64osJbF1Pbwo+iMef4cwU+EoR6jJROAjadL6H+z+u
         w2zJjY1ypuv+g+/XHR664VnDiCqd1Z/v8oLOP1qSD+di3NvVhQp43jVC4GgFU2lltUkj
         fVLfm9QCLEW7siliDU/21qAQm0Aem7S5P4eMtIl2M8iLqUg9L/uwFcYl28USYb924/i9
         faq76IJL1qnBC5QCBpsB88PRjdCM+dplPkbSC8GKnaQW8K1DPJWBhrcBcxQMZR1OmQs+
         8Z52ha25gfPbYTmCf3G3RU265pHUcAkOiQ8cdsLZbBoEYdJbKMdTe/udc+SHytm055Xq
         9iVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=s55qRbTV0i9qOWnz3BS/7/H0Svhwy5FRWkIauRWmgEk=;
        b=a+LHUMdQR2pDvHxvOdbkTfCRcIiXoS9OcMwEMv7dZd117g0Rc2H9GXIFj8eQTOaWzc
         gwHvR6zLbllUTE+nvWA5g4UoSB8UwwfPS+69+G18QCl4I0SpFclsy6wkySugkRbZnNOY
         WG3ZpqyCwBEPATu+lonz6Jl9gNmQt5lzraXxaQsnnONwn3RUqYv4T+2W8U7ip0gwoJse
         z5BVBQgjEf5jYB673M+WKW/Ws1WZIXavR2RWu5b/YQiIjC17/QCs9wg6bK9LmfE231b6
         WNYx9AbRivJM5Pw3+TxtHX5yjgnld2RX8UeiZ0QGhz5TUqcGOxXyC2sK0rUsOn/ue7va
         EfUw==
X-Gm-Message-State: AOAM530d/p+toWK2tif5gqbOUtkVWYBtu16DEnjXKmt8AopHOyt+rFBz
	IavXr2KuywdFOVvdVoQ2w15kHufktnqTXNW3Y0dju4ppMF12DqVXBzU=
X-Google-Smtp-Source: ABdhPJzJSBNAo5YD2S5Il4wL2dkVAXMzjvP+jGQj5qOuvJTF8UBwgCAWRgceTOhhd7bzbANKGdobCP/Qzt/orx65ha0=
X-Received: by 2002:a4a:e40b:: with SMTP id t11mr205470oov.43.1605201289083;
 Thu, 12 Nov 2020 09:14:49 -0800 (PST)
MIME-Version: 1.0
From: "Paul Adams" <paul.adams@evogro.com>
Date: Thu, 12 Nov 2020 17:14:38 +0000
Message-ID: <CAHT06YjaEtppudHeR9HazY7MHD3JeL2JdjBUnSneDLNEGRyQGQ@mail.gmail.com>
Subject: Patch files before recipe is parsed
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

There is a problem with the Yocto recipe for Python 3 in warrior. It
is missing ntpath in the list of core modules listed in
python3-manifest.json.

Since warrior is EOL, I was hoping to fix this by patching the
python3-manifest.json file but it doesn't work. I think the reason is
that the manifest file is read by an anonymous function in the recipe,
which I understand is executed during recipe parsing (which I assume
happens before the patches are applied).

I know the patch is being applied correctly because the content of
python3-manifest.json file is correct when I inspect it in  the
build/tmp/work... directory.

My question is whether there is any method in bitbake to apply patches
early enough to fix this issue?
