Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.38887.1598603237981246501
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 01:27:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZXBX45I5;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: lefevre.da@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id o21so152619wmc.0
        for <yocto@lists.yoctoproject.org>; Fri, 28 Aug 2020 01:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=CGuXdlry9DU5jZTlC87FMYivU9gSakQWjPiQf7VKIcw=;
        b=ZXBX45I5l9iVq/axxDUgG2OxLscILas64wSTHGBVI6a4Hv0AXa6WStbc5WtlXsvEiS
         74v+JaoyrbNwvpgaBAvrwhamltnzaecYaWNuj8O9FFnCsd3mxJmQHrVOILtsPWO22E6p
         rltltgg89MlOgZ8DMqJLEVoFruYBMUYAJsm0ssFYiXfvkF7mraMzpu6du9uRGqLTvOFL
         cNENMUElu9FtG1oMveCJSL0fxtARwAbwJngD1Bos0qwVhHosI0zEHGTZRFczHzPEzeHY
         daYbZJbZuP6MK4auJtyd1C91EzvjT6diTFl1w4sNjsJAOTAQXRnHoraSZAmvial8qH/R
         isYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CGuXdlry9DU5jZTlC87FMYivU9gSakQWjPiQf7VKIcw=;
        b=spSmJydizY8+bTuSNCR1/qnjyqKUUrAh81iCme3vug3Zr/mqWw1TZTTzuB+wdDAe7Y
         t0evxoZTt9hgwNs2MkYWHjCAQX893pz+LQ70NROlP1BQXaatT0FNyWZSPZjPbxwk3p61
         pG70MlVgFzW4L1W5ydmSJdiu/UO2ioOXNfiskS4JnEMmTXlufxxtHku/OJh9zqTnxejT
         A0fbr80kTfHn7807i9QNPt5QtrEEgU47QRZl/De38IflPfvHvG7MpTS+ipAZog9y2PO+
         4PYkCwJV9l546E/Ro5EbugvaEUpSIxQ7/bl1wOy7GSikIFTQm3hX8Mde2ovhYdadXeal
         zSJA==
X-Gm-Message-State: AOAM5321tCMg0NDlqvU1oZUZfnO1vDkAlF/NFtOcpzrXPfbtzesUZGyM
	aAnSRNd6zIWHmvfymaRS4KDfT+PMdWuRIeYRs4znCpun6Q==
X-Google-Smtp-Source: ABdhPJzrtFHGlMuSUv5SS9YbygEL5asd0Nc4ait5IH+ldDgEnFLIrxSVFor2eA32hMkXHVELW/RYB+1r3gzexUwa8XQ=
X-Received: by 2002:a1c:96d7:: with SMTP id y206mr473983wmd.9.1598603235897;
 Fri, 28 Aug 2020 01:27:15 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Fri, 28 Aug 2020 11:27:05 +0300
Message-ID: <CA+FhBv-72SsCNcRY2phG-vBZMV6n78O1K4h=DbUQOOLrJoeJ-Q@mail.gmail.com>
Subject: How to generate opensource licenses credits web page
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000336ab05adebd2f2"

--0000000000000336ab05adebd2f2
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a distro which is not using any package manager in the image. Images
are deployed atomically.

I'd like to make a script to generate the credits / acknowledgement web
page for all the open source components to ease the task and make sure I
don't forget anyone.

In the actual image I have the list of the licenses in /usr/share/licenses/
which is good, but I'm missing the SUMMARY, DESCRIPTION, and HOMEPAGE
fields we declare in the recipes which would be nice to display

Is there any built-in way to bring that information in the image?

I noticed that in the image's build directory there is
/image-name/1.0-r0/oe-rootfs-repo/aarch64/Packages which if I understand
correctly has the ipk package list with the missing information.

Is there a way to copy that file in the image after do_rootfs completes?

Thanks,
-Damien

--0000000000000336ab05adebd2f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I have a distro which is not using any package =
manager in the image. Images are deployed atomically.<br><br>I&#39;d like t=
o make a script to generate the credits / acknowledgement web page for all =
the open source components to ease the task and make sure I don&#39;t forge=
t anyone.<br><br>In the actual image I have the list of the licenses in /us=
r/share/licenses/ which is good, but I&#39;m missing the SUMMARY, DESCRIPTI=
ON, and HOMEPAGE fields we declare in the recipes which would be nice to di=
splay<br><br>Is there any built-in way to bring that information in the ima=
ge?<br><br>I noticed that in the image&#39;s build directory there is /imag=
e-name/1.0-r0/oe-rootfs-repo/aarch64/Packages which if I understand correct=
ly has the ipk package list with the missing information.<br><br>Is there a=
 way to copy that file in the image after do_rootfs completes?<br><div><br>=
</div><div>Thanks,</div><div>-Damien</div></div>

--0000000000000336ab05adebd2f2--
