Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE8BC433F5
	for <webhook@archiver.kernel.org>; Tue,  3 May 2022 22:21:13 +0000 (UTC)
Subject: Re: [PATCH yocto-autobuilder-helper v12] Add a banner on the old
 documentation docs.
To: yocto@lists.yoctoproject.org
From: "Abongwa Amahnui Bonalais" <abongwabonalais@gmail.com>
X-Originating-Location: CM (154.72.153.139)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 03 May 2022 15:21:08 -0700
References: <962ff376-9257-bb1b-8aa8-b220feba0934@theobroma-systems.com>
In-Reply-To: <962ff376-9257-bb1b-8aa8-b220feba0934@theobroma-systems.com>
Message-ID: <19985.1651616468881175822@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="oSj9qR8dZ59SXRECejQV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 May 2022 22:21:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56987

--oSj9qR8dZ59SXRECejQV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin
On Tue, May 3, 2022 at 10:51 AM, Quentin Schulz wrote:

>=20
>=20
>> +
>> +
>> +
>> +def dunfell_tags(dir):
>> + dunfell_banners =3D []
>> + for root, dirs, filenames in os.walk(dir):
>> + dunfell_banners =3D [ name for name in os.listdir(dir) if not
>> name.startswith('3.1') ]
>> + for d in dirs:
>> + if d in dunfell_banners:
>> + dirs.remove(d)
>> +
>> + for filename in filenames:
>> + if filename.endswith('.html'):
>> + with open(os.path.join(root, filename), 'r', encoding=3D"ISO-8859-1") =
as
>> f:
>> + current_content =3D f.read()
>> + with open(os.path.join(root, filename), 'w') as f:
>> + f.write(current_content.replace('<body>', '<body>' +
>> html_content_dunfell))
>> + f.write(current_content.replace('</body>', last_div + '</body>'))
>> + if filename.endswith('.css'):
>> + with open(os.path.join(root, filename), 'r', encoding=3D"ISO-8859-1") =
as
>> f:
>> + css_content =3D f.read()
>> + with open(os.path.join(root, filename), 'w') as f:
>> + f.write(css_content.replace(css_content[css_content.find('body
>> {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
>> + print(dunfell_banners)
>=20
> This is all extremely complex just for using a different variable
> depending on the name of the directory.

I wish to ask if your'e referring to the last line of code or this entire f=
unction, I have actuallly removed the print(dunfell_banners) line

Thanks a lot for reviewing.

--oSj9qR8dZ59SXRECejQV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin<br />On Tue, May 3, 2022 at 10:51 AM, Quentin Schulz wrote:<br /=
>
<blockquote>
<blockquote>+<br />+<br />+<br />+def dunfell_tags(dir):<br />+ dunfell_ban=
ners =3D []<br />+ for root, dirs, filenames in os.walk(dir):<br />+ dunfel=
l_banners =3D [ name for name in os.listdir(dir) if not name.startswith('3.=
1') ]<br />+ for d in dirs:<br />+ if d in dunfell_banners:<br />+ dirs.rem=
ove(d)<br />+<br />+ for filename in filenames:<br />+ if filename.endswith=
('.html'):<br />+ with open(os.path.join(root, filename), 'r', encoding=3D"=
ISO-8859-1") as f:<br />+ current_content =3D f.read()<br />+ with open(os.=
path.join(root, filename), 'w') as f:<br />+ f.write(current_content.replac=
e('&lt;body&gt;', '&lt;body&gt;' + html_content_dunfell))<br />+ f.write(cu=
rrent_content.replace('&lt;/body&gt;', last_div + '&lt;/body&gt;'))<br />+ =
if filename.endswith('.css'):<br />+ with open(os.path.join(root, filename)=
, 'r', encoding=3D"ISO-8859-1") as f:<br />+ css_content =3D f.read()<br />=
+ with open(os.path.join(root, filename), 'w') as f:<br />+ f.write(css_con=
tent.replace(css_content[css_content.find('body {'):css_content.find('}'[0]=
)], 'body {' + css_replacement_content ))<br />+ print(dunfell_banners)</bl=
ockquote>
This is all extremely complex just for using a different variable depending=
 on the name of the directory.</blockquote>
I wish to ask if your'e referring to the last line of code or this entire f=
unction, I have actuallly removed the print(dunfell_banners) line<br /><br =
/>Thanks a lot for reviewing.

--oSj9qR8dZ59SXRECejQV--

