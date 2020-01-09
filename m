Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
 by mx.groups.io with SMTP id smtpd.web10.728.1578603839817431093
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 13:03:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FHoY5ipj;
 spf=pass (domain: gmail.com, ip: 209.85.166.43, mailfrom: eripflo@gmail.com)
Received: by mail-io1-f43.google.com with SMTP id z193so8734366iof.1
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2020 13:03:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Gib2fudQmfQaNx7WeK7vCAIHj0Xh8tsgTlIJoBkTzr4=;
        b=FHoY5ipjklAyM68beymSBSvYITW9mHCBd9pwrQDtJZ/1ljydinKZvvcUozb6eqDMIv
         Qq1P6UVOqZe98/x18oYQJKdIkm81WEbvagGSebHTwfif1z/w4hKrOLiKcjWe2g23BGBt
         H9uTOHJaH5RLuA9ZEKrAxQ4ocwcyZbCz1RHkUu4oHl/O39d0Uke74aYWR+iSfflrYzNI
         249xlKgpp9Spoi6Idn/HsFWkSwlhPNTMZ6QBNFBbmRsx9wSnvZ1/VTzQA2Wsa78d8f4A
         djhz7fTe75isMQqYlNqjDq05EIB9Rt5Fqo8miqowgbKuqAGr+9mcKdaUT5FvsO120pFr
         bj6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Gib2fudQmfQaNx7WeK7vCAIHj0Xh8tsgTlIJoBkTzr4=;
        b=tOPt+FGLsSFEyqtQaaO4f0oCPF2kGS41BBUkLhIDBEFwjMLXx0RpgZaiUbqgaXNcmg
         cEt75rfNRlJlkIsy1qfgQKPCB2EBsldtLkPvRitnVVjXm5ex6teArYqAaGXoVeSwwT6V
         0G1y0tt/erGTqjoUTU6ZpD7AsqLp6UVtlhQMWNG0U/9xW66nSf/+kHmLvas8MuTC/JmK
         DPhHjdTvO3jsd20pRfBTXAvCZ7L7ujTT2m0dkMimzJ0YTsu6oCNORMQWuZxG8VIUX9XD
         fLBP2j3RJnL4UrPqeKe3heQhVhW7fleo6eWXcSn7U+c28WsSzvZKc7xu06jWWCSi8klP
         WYKw==
X-Gm-Message-State: APjAAAUA5w77UlhRIxq5F516bGAYfHZs4sK19k90bRYmfekZQDzh1sTs
	b1cpeBeY/RSwG0jvh5C2WqD4mHt8oMwctuIwZ8M=
X-Google-Smtp-Source: APXvYqz3GTJE9KyVNTXTUKDtu2XKgNZ/IkkkCj7lM5gPyWo7lC7kYqPZkdXSlrTrLjzfYtJ+DrDHn0Jtu2riWANbIA4=
X-Received: by 2002:a5e:da42:: with SMTP id o2mr9142320iop.125.1578603839124;
 Thu, 09 Jan 2020 13:03:59 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com> <CAGhBkzzSOPkOW2LHjhh4P0_By3CB9Ev9R+vDa=naB2JEBpCVBA@mail.gmail.com>
 <CADfgfoYzGW5jGKd2ru1wKsomuFbSgOthPhGGRYQ8g7tBavp8zw@mail.gmail.com>
 <CAGhBkzxH3c_mUtdJF2wYRe3ovdb4TO73T6wYM1vPZZWvAbsw9w@mail.gmail.com>
 <CADfgfobNxJMcdBLPoXCFRavt5tA0PshHR+fTKhiZtZZVATx_3g@mail.gmail.com>
 <CAGhBkzwLfDnw18LzoTPxrMuToX78v21+DvqPugyC=W8fRLnbtA@mail.gmail.com> <84aed93c-30a9-e972-6c14-df9bfdf69d7d@mvista.com>
In-Reply-To: <84aed93c-30a9-e972-6c14-df9bfdf69d7d@mvista.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Thu, 9 Jan 2020 16:03:47 -0500
Message-ID: <CAGhBkzwsHCiAtKeHPe8mK6Xif3QdtBGsiimi-NApu0Z+a2Jx5A@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: akuster <akuster@mvista.com>
Cc: Michael Halstead <mhalstead@linuxfoundation.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000012789a059bbb5907"

--00000000000012789a059bbb5907
Content-Type: text/plain; charset="UTF-8"

yes, It is working now.

Thanks a lot :)

I should really look into how to mirror it in case of failures.

Regards,

Ripu

On Thu, Jan 9, 2020 at 4:01 PM akuster <akuster@mvista.com> wrote:

>
>
> On 1/9/20 12:49 PM, FLoraVLogs wrote:
>
> Hi,
>
> Thanks for fixing it last time for us. But it looks like Yocto is down
> again.
>
> http://downloads.yoctoproject.org/
>
>
> Its working for me. I believe some work was being done on the NAS that
> might have affected this.
>
> Please try again.
>
> - Armin
>
>
> I am getting 404 error:
> Host Not Found
>
> DNS error (the host name of the page you are looking for does not exist)
> or Server did not accept the connection.
>
> Please check that the host name has been spelled correctly.
>
>
> Regards,
>
> Ripu
>
> On Fri, Dec 13, 2019 at 3:43 PM Michael Halstead <
> mhalstead@linuxfoundation.org> wrote:
>
>> Configuration is complete and these services are online.
>>
>> On Fri, Dec 13, 2019 at 11:55 AM FLoraVLogs <eripflo@gmail.com> wrote:
>> >
>> > Ok, thanks for the update :)
>> >
>> > On Fri., Dec. 13, 2019, 2:43 p.m. Michael Halstead, <
>> mhalstead@linuxfoundation.org> wrote:
>> >>
>> >> Update: Spare hardware is racked and cabled. Data center staff is
>> beginning configuration. I expect service to be restored in 30 to 40
>> minutes.
>> >>
>> >> On Fri, Dec 13, 2019 at 10:53 AM FLoraVLogs <eripflo@gmail.com> wrote:
>> >>>
>> >>> Thank you for your response. Kindly keep me posted.
>> >>>
>> >>> Regards,
>> >>> Ripu
>> >>>
>> >>> On Fri., Dec. 13, 2019, 12:36 p.m. akuster, <akuster@mvista.com>
>> wrote:
>> >>>>
>> >>>>
>> >>>>
>> >>>> On 12/13/19 7:46 AM, FLoraVLogs wrote:
>> >>>>
>> >>>> Hi,
>> >>>>
>> >>>> I went to "http://downloads.yoctoproject.org/" and I get the
>> following message:
>> >>>>
>> >>>> Gateway Timeout
>> >>>>
>> >>>> Server error - server 198.145.29.63 is unreachable at this moment.
>> >>>>
>> >>>> Please retry the request or contact your administrator.
>> >>>>
>> >>>> Kindly assist here.
>> >>>>
>> >>>>
>> >>>> Thanks. The LF IT department is aware of  this and working towards a
>> solution.
>> >>>>
>> >>>> No ETA.
>> >>>>
>> >>>> Regards,
>> >>>> Armin
>> >>>>
>> >>>> Regards,
>> >>>>
>> >>>> Ripu
>> >>>>
>> >>>>
>> >>>> 
>>
>
>

--00000000000012789a059bbb5907
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">yes, It is working now.=C2=A0<br><div><br></div><div>Thank=
s a lot :)</div><div><br></div><div>I should really look into how to mirror=
 it in case of failures.</div><div><br></div><div>Regards,</div><div><br></=
div><div>Ripu</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, Jan 9, 2020 at 4:01 PM akuster &lt;<a href=3D"ma=
ilto:akuster@mvista.com">akuster@mvista.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
  
    
  
  <div>
    <br>
    <br>
    <div>On 1/9/20 12:49 PM, FLoraVLogs wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>Thanks for fixing it last time for us. But it looks like
          Yocto is down again.</div>
        <div><br>
        </div>
        <div><a href=3D"http://downloads.yoctoproject.org/" target=3D"_bla=
nk">http://downloads.yoctoproject.org/</a>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
    Its working for me. I believe some work was being done on the NAS
    that might have affected this.<br>
    <br>
    Please try again.<br>
    <br>
    - Armin<br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>I am getting 404 error:</div>
        <h1>Host Not Found</h1>
        <p>DNS error (the host name of the
          page you are looking for does not exist) or Server did not
          accept the connection.<br>
          <br>
        </p>
        <div><span>Please check that the host
            name has been spelled correctly.</span></div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div><br>
        </div>
        <div>Ripu=C2=A0<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 3:43
          PM Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxfoundat=
ion.org" target=3D"_blank">mhalstead@linuxfoundation.org</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Configuration
          is complete and these services are online.<br>
          <br>
          On Fri, Dec 13, 2019 at 11:55 AM FLoraVLogs &lt;<a href=3D"mailt=
o:eripflo@gmail.com" target=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br>
          &gt;<br>
          &gt; Ok, thanks for the update :)<br>
          &gt;<br>
          &gt; On Fri., Dec. 13, 2019, 2:43 p.m. Michael Halstead, &lt;<a =
href=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blank">mhalstead@l=
inuxfoundation.org</a>&gt;
          wrote:<br>
          &gt;&gt;<br>
          &gt;&gt; Update: Spare hardware is racked and cabled. Data
          center staff is beginning configuration. I expect service to
          be restored in 30 to 40 minutes.<br>
          &gt;&gt;<br>
          &gt;&gt; On Fri, Dec 13, 2019 at 10:53 AM FLoraVLogs &lt;<a href=
=
=3D"mailto:eripflo@gmail.com" target=3D"_blank">eripflo@gmail.com</a>&gt; =
wrote:<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt; Thank you for your response. Kindly keep me
          posted.<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt; Regards,<br>
          &gt;&gt;&gt; Ripu<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt; On Fri., Dec. 13, 2019, 12:36 p.m. akuster, &lt;<a =
href=3D"mailto:akuster@mvista.com" target=3D"_blank">akuster@mvista.com</a>=
&gt; wrote:<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; On 12/13/19 7:46 AM, FLoraVLogs wrote:<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Hi,<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; I went to &quot;<a href=3D"http://downloads.yoc=
toproject.org/" rel=3D"noreferrer" target=3D"_blank">http://downloads.yocto=
project.org/</a>&quot;
          and I get the following message:<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Gateway Timeout<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Server error - server 198.145.29.63 is
          unreachable at this moment.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Please retry the request or contact your
          administrator.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Kindly assist here.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Thanks. The LF IT department is aware of=C2=A0
          this and working towards a solution.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; No ETA.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Regards,<br>
          &gt;&gt;&gt;&gt; Armin<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Regards,<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; Ripu<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt; <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--00000000000012789a059bbb5907--
