Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com [209.85.160.195])
 by mx.groups.io with SMTP id smtpd.web12.11871.1578171993955510396
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jan 2020 13:06:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=s+C6Fwy7;
 spf=pass (domain: gmail.com, ip: 209.85.160.195, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f195.google.com with SMTP id e5so39568478qtm.6
        for <yocto@lists.yoctoproject.org>; Sat, 04 Jan 2020 13:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3W8/kutTFAYyog9LsWZu3XvRkJbWiONk2bsYq9d2m+8=;
        b=s+C6Fwy7GSpPExHHIJbCo18Vj4BZ/5ZPxZLeLXd0ndoWE2NXmga/nr4gUBW3KZkodQ
         Cc2oWVZJGX//2r2y7f21G0S+uCqo1h5cQ0EyPQ2LQrfClQjhWNgrtsGQFuWdS56nS3Od
         lSJ3Ql8uFOTGqNkJnD4tfLDwEHbe/OxnWqiMob4m97iK3zgZE/Bv6KI/31LYQa3xSPZm
         xUcbJ/zKIdx8vehBY4MU+JSF4iEsVSUMnpm9Ra0ztDwHj5WUtZhHW4xXdxvVChOMKr8e
         pk4UfJqA7+v+/tKDo3+0i/nwyOodArv6O2MnXEWV+qebZ+yh2yDRqVjgHtKUBZOQwdL4
         yZlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3W8/kutTFAYyog9LsWZu3XvRkJbWiONk2bsYq9d2m+8=;
        b=WeytRpoYNo0TqiByz34IIrrlPBu8qanlSFV/b+H8LC7eKQRsA/WnQ/C5w0GrFJYCkE
         6OJvoE6JJEN9Bs6dqFfCrxW2JeKsf8/WOW2UUTRpV2eqpPmV9GmC227FvNIwlnpcurLC
         SMmv8LrO38ukRG0+/6tryHDNLVdjRH2M1BsoRKb5lwCAJp93Dd16vyMY/CqcXJ0aHn1N
         loioGio4upiztpZb2ODxmZhEWDg66t+h9o3plTyPRh8B7SyEIUlnNUdkSVH1ILNu4uEs
         QfOSC0TPwM6j1QpiV88wXDun3pzNBy2peeiuLABHEKpBRZp63uTI09zz7NnyqpTcYulo
         +q1A==
X-Gm-Message-State: APjAAAVDMEhbh7Lm44ugLwgxfcgV9LnhOZkKG2pWf6xzy3gElEnDws0v
	/mfCHKQNBTrXXQTVq9OpnDj2Heb6ZWpGNBKEdEQ=
X-Google-Smtp-Source: APXvYqz45QRT1TkGZuINzqwfRS45FwSmylXRNJUWfJ7PixfStejAlVKdPnWh+erCfVJKj0dFbiioqtBEDVJv1MUUtVQ=
X-Received: by 2002:ac8:544f:: with SMTP id d15mr70004133qtq.53.1578171992665;
 Sat, 04 Jan 2020 13:06:32 -0800 (PST)
MIME-Version: 1.0
References: <1573547573-352969-1-git-send-email-changqing.li@windriver.com>
 <9315981.NtHHCumI8A@shodan> <5af91cd5-9249-e236-480b-fb3b4962bc0b@windriver.com>
 <b0968d53-5b8b-c3dc-d0cd-07ab0e817f01@windriver.com>
In-Reply-To: <b0968d53-5b8b-c3dc-d0cd-07ab0e817f01@windriver.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sat, 4 Jan 2020 13:06:06 -0800
Message-ID: <CAMKF1sr-yXjSDwP-kby1u=iYUmMXa0wmYsDqau=smcTM_f+knA@mail.gmail.com>
Subject: Re: [yocto] [error-report-web][PATCH V2] Add local.conf and auto.conf into error details
To: Changqing Li <changqing.li@windriver.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

has this resolved on server side ? since I see that
patch to report-error.bbclass is still not applied in
oe-core

On Mon, Dec 16, 2019 at 7:48 PM Changqing Li <changqing.li@windriver.com> wrote:
>
> correct the mail list to yocto@lists.yoctoproject.org
>
> On 12/11/19 1:45 PM, Changqing Li wrote:
> >
> > On 11/13/19 6:36 PM, Paul Eggleton wrote:
> >> Hi Changqing,
> >>
> >> Some comments below.
> >>
> >> On Tuesday, 12 November 2019 9:32:53 PM NZDT
> >> changqing.li@windriver.com wrote:
> >>> From: Changqing Li <changqing.li@windriver.com>
> >>>
> >>> Support to display local.conf and auto.conf on error report web.
> >>> Here is commit in oe-core, which add local.conf/auto.conf into error
> >>> report
> >>> https://git.openembedded.org/openembedded-core/commit/?id=7adf9707c04d8ef6bcd8d8bda555687f705e6ee6
> >>>
> >>>
> >>> This commit is related to YOCTO #13252
> >>>
> >>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> >>> ---
> >>>   Post/0006_auto_20190917_0419.py | 24 ++++++++++++++++++++++++
> >>>   Post/models.py                  |  2 ++
> >>>   Post/parser.py                  |  2 ++
> >>>   Post/test.py                    |  2 ++
> >>>   templates/error-details.html    | 10 ++++++++++
> >>>   test-data/test-payload.json     |  4 +++-
> >>>   6 files changed, 43 insertions(+), 1 deletion(-)
> >>>   create mode 100644 Post/0006_auto_20190917_0419.py
> >>>
> >>> diff --git a/Post/0006_auto_20190917_0419.py
> >>> b/Post/0006_auto_20190917_0419.py
> >>> new file mode 100644
> >>> index 0000000..827944e
> >>> --- /dev/null
> >>> +++ b/Post/0006_auto_20190917_0419.py
> >> Could you please give the migration a proper name (-n option to
> >> makemigrations) e.g. local_conf_auto_conf
> > OK, thanks
> >>
> >>> --- a/Post/models.py
> >>> +++ b/Post/models.py
> >>> @@ -43,6 +43,8 @@ class Build(models.Model):
> >>>       LINK_BACK = models.TextField(max_length=300, blank=True,
> >>> null=True)
> >>>       ERROR_TYPE = models.CharField(max_length=20,
> >>> choices=ERROR_TYPE_CHOICES,
> >>>                                     default=ErrorType.RECIPE)
> >>> +    LOCAL_CONF =
> >>> models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE), default="")
> >>> +    AUTO_CONF =
> >>> models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE), default="")
> >> I'm not sure this is practical, for two reasons:
> >>
> >> 1) Field sizes should not be variable like this; changing the
> >> MAX_UPLOAD_SIZE value after the fact would not change the database
> >> structure
> >> 2) The value could never actually reach MAX_UPLOAD_SIZE because the
> >> overhead of the surrounding JSON would block it from being uploaded
> >> if it did
> >>
> >> However, since this is a TextField we don't actually have to specify
> >> a max_length (for a TextField max_length only actually affects the
> >> frontend, and we don't expose this field in a form) so it can just be
> >> removed.
> >>
> >> Another thing, instead of default="" you should use blank=True.
> > OK,  I will fix this.
> >>
> >>
> >>> +        {% if detail.BUILD.LOCAL_CONF != "" %}
> >>> +        <dt></a>Local Conf:</dt>
> >>> +        <dd style="white-space: pre-wrap;">{{
> >>> detail.BUILD.LOCAL_CONF | safe }}</dd>
> >>> +        {% endif %}
> >>> +
> >>> +        {% if detail.BUILD.AUTO_CONF != "" %}
> >>> +        <dt></a>Auto Conf:</dt>
> >>> +        <dd style="white-space: pre-wrap;">{{
> >>> detail.BUILD.AUTO_CONF | safe }}</dd>
> >>> +        {% endif %}
> >> We cannot use the safe filter here - doing so could open up an XSS
> >> vulnerability, since anyone can upload anything to the error-report
> >> application and the content could include links or other malicious
> >> HTML data. We should allow it to be auto-escaped. Is there a
> >> particular issue you were using this to solve?
> >
> > This is for resolve a problem when there is angle brackets in
> > local.conf/auto.conf.
> >
> > I have a patch in oe-core [OE-core] [PATCH] report-error.bbclass:
> > replace angle brackets with &lt; and &gt;]
> >
> > when we have below content in local.conf or auto.conf:
> > BUILDHISTORY_COMMIT_AUTHOR ?= "Khem Raj<raj.khem@gmail.com>"
> > send-error-report will fail with "HTTP Error 500: OK"
> >
> > error-report-web do rudimentary check on all fields that are
> > passed to the graphs page to avoid any XSS happening, if contains
> > '<', the server will return error(Invalid characters in json).
> > fixed by use escape of <> to replace it.
> >
> > NOTE: with this change, error-report-web need to add filter 'safe'
> > for the string wanted to display to avoid further HTML escaping
> > prior to output. Below is how the content displayed on webpage:
> > with the filter 'safe':
> > BUILDHISTORY_COMMIT_AUTHOR ?= "Khem Raj<raj.khem@gmail.com>"
> > without the filter 'safe':
> > BUILDHISTORY_COMMIT_AUTHOR ?= "Khem Raj &lt;raj.khem@gmail.com&gt;"
> >
> > Do you have good idea to resolve this? Thanks.
> >
> >>
> >> Cheers
> >> Paul
> >>
> >
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47707): https://lists.yoctoproject.org/g/yocto/message/47707
> Mute This Topic: https://lists.yoctoproject.org/mt/61340472/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
