Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26B3C433FE
	for <webhook@archiver.kernel.org>; Wed, 11 May 2022 16:18:08 +0000 (UTC)
Subject: Re: [PATCH yocto-autobuilder-helper v13] Add a banner on the old
 documentation docs. Script to add banners to the old docs and outdated
 dunfell docs
To: yocto@lists.yoctoproject.org
From: "Abongwa Amahnui Bonalais" <abongwabonalais@gmail.com>
X-Originating-Location: CM (154.72.153.149)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 11 May 2022 09:18:03 -0700
References: 
 <ddac85a4c2c087e8fedf8064126f3f19764e7a59.camel@linuxfoundation.org>
In-Reply-To: 
 <ddac85a4c2c087e8fedf8064126f3f19764e7a59.camel@linuxfoundation.org>
Message-ID: <12800.1652285883655120441@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gyV9FJMYF7K9sCzy13zl"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 May 2022 16:18:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57058

--gyV9FJMYF7K9sCzy13zl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 5, 2022 at 09:03 PM, Richard Purdie wrote:

>=20
> One small thing, shouldn't we write the files with the same encoding as w=
e
> read
> them?

thank you for this, I adjusted it the most recent patch

>=20
> On 5/10/22 18:46, Abongwa Amahnui Bonalais wrote:

>=20
> Hello Richard,
> Thanks for the review
>=20
>=20
>> I think Quentin also mentioned that these two loop functions can be merg=
ed
>>=20
>> together to form simpler code with a condition in the centre section?
>=20
> I'm sorry I don't understand how to implement this as I tried using a
> function in the code but then the dirs was modified constantly when it wa=
s
> not supposed and I did not succeed to prevent it from doing so.
> I will continue doing more research on how to go about it, but if you hav=
e
> a method you would like me to use, I would gladly try it out.
> Thank you.

>=20
> In pseudo-code: html_banner_dunfell =3D "this" html_banner_not_dunfell =
=3D
> "that" css_banner =3D "something" for directory, files in
> recursive_traversal(path): if matches(directory, '3.1*'): html_banner =3D
> html_banner_dunfell else html_banner =3D html_banner_not_dunfell for file=
 in
> files: if matches(file, '*.html'): replace(content(file), html_banner) el=
se
> if matches(file, '*.css'): replace(content(file), css_banner) In v12 I
> commented the following code if you need something closer to proper Pytho=
n
> code: def add_banner_old_docs(dir): for root, dirs, filenames in
> os.walk(dir): if root.startswith('./3.1'): html_replacement =3D
> html_content_dunfell else: html_replacement =3D html_content for filename=
 in
> filenames: if filename.endswith('.html'): with open(os.path.join(root,
> filename), 'r', encoding=3D"ISO-8859-1") as f: current_content =3D f.read=
() with
> open(os.path.join(root, filename), 'w') as f: f.write(current_content.rep=
lace('<body>',
> '<body>' + html_replacement)) f.write(current_content.replace('</body>',
> last_div '</body>')) if filename.endswith('.css'): with
> open(os.path.join(root, filename), 'r', encoding=3D"ISO-8859-1") as f: cs=
s_content
> =3D f.read() with open(os.path.join(root, filename), 'w') as f: f.write(c=
ss_content.replace(css_content[css_content.find('body
> {'):css_content.find('}'[0])], 'body {' + css_replacement_content )) add_=
banner_old_docs('.')
> Not tested of course, but hopefully that helps you understand what I mean=
t
> with factoring out the code into one function only.

Thank you very much, I implemented this and=C2=A0 I worked.

--gyV9FJMYF7K9sCzy13zl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 5, 2022 at 09:03 PM, Richard Purdie wrote:<br />
<blockquote>One small thing, shouldn't we write the files with the same enc=
oding as we read<br />them?</blockquote>
thank you for this, I adjusted it the most recent patch<br /><br />
<blockquote><span style=3D"white-space: pre-wrap;">On 5/10/22 18:46, Abongw=
a Amahnui Bonalais wrote:</span></blockquote>
<blockquote style=3D"white-space: pre-wrap;">Hello Richard,<br />Thanks for=
 the review<br /><br />
<blockquote>I think Quentin also mentioned that these two loop functions ca=
n be merged<br />together to form simpler code with a condition in the cent=
re section?</blockquote>
I'm sorry I don't understand how to implement this as I tried using a funct=
ion in the code but then the dirs was modified constantly when it was not s=
upposed and I did not succeed to prevent it from doing so.<br />I will cont=
inue doing more research on how to go about it, but if you have a method yo=
u would like me to use, I would gladly try it out.<br />Thank you.</blockqu=
ote>
<blockquote><span style=3D"white-space: pre-wrap;">In pseudo-code:</span><s=
pan style=3D"white-space: pre-wrap;">html_banner_dunfell =3D "this"</span><=
span style=3D"white-space: pre-wrap;">html_banner_not_dunfell =3D "that"</s=
pan><span style=3D"white-space: pre-wrap;">css_banner =3D "something"</span=
><span style=3D"white-space: pre-wrap;">for directory, files in recursive_t=
raversal(path):</span><span style=3D"white-space: pre-wrap;"> if matches(di=
rectory, '3.1*'):</span><span style=3D"white-space: pre-wrap;"> html_banner=
 =3D html_banner_dunfell</span><span style=3D"white-space: pre-wrap;"> else=
</span><span style=3D"white-space: pre-wrap;"> html_banner =3D html_banner_=
not_dunfell</span><span style=3D"white-space: pre-wrap;"> for file in files=
:</span><span style=3D"white-space: pre-wrap;"> if matches(file, '*.html'):=
</span><span style=3D"white-space: pre-wrap;"> replace(content(file), html_=
banner)</span><span style=3D"white-space: pre-wrap;"> else if matches(file,=
 '*.css'):</span><span style=3D"white-space: pre-wrap;"> replace(content(fi=
le), css_banner)</span><span style=3D"white-space: pre-wrap;">In v12 I comm=
ented the following code if you need something closer to proper Python code=
:</span><span style=3D"white-space: pre-wrap;">def add_banner_old_docs(dir)=
:</span><span style=3D"white-space: pre-wrap;"> for root, dirs, filenames i=
n os.walk(dir):</span><span style=3D"white-space: pre-wrap;"> if root.start=
swith('./3.1'):</span><span style=3D"white-space: pre-wrap;"> html_replacem=
ent =3D html_content_dunfell</span><span style=3D"white-space: pre-wrap;"> =
else:</span><span style=3D"white-space: pre-wrap;"> html_replacement =3D ht=
ml_content</span><span style=3D"white-space: pre-wrap;"> for filename in fi=
lenames:</span><span style=3D"white-space: pre-wrap;"> if filename.endswith=
('.html'):</span><span style=3D"white-space: pre-wrap;"> with open(os.path.=
join(root, filename), 'r', encoding=3D"ISO-8859-1") as f:</span><span style=
=3D"white-space: pre-wrap;"> current_content =3D f.read()</span><span style=
=3D"white-space: pre-wrap;"> with open(os.path.join(root, filename), 'w') a=
s f:</span><span style=3D"white-space: pre-wrap;"> f.write(current_content.=
replace('&lt;body&gt;', '&lt;body&gt;' + html_replacement))</span><span sty=
le=3D"white-space: pre-wrap;"> f.write(current_content.replace('&lt;/body&g=
t;', last_div '&lt;/body&gt;'))</span><span style=3D"white-space: pre-wrap;=
"> if filename.endswith('.css'):</span><span style=3D"white-space: pre-wrap=
;"> with open(os.path.join(root, filename), 'r', encoding=3D"ISO-8859-1") a=
s f:</span><span style=3D"white-space: pre-wrap;"> css_content =3D f.read()=
</span><span style=3D"white-space: pre-wrap;"> with open(os.path.join(root,=
 filename), 'w') as f:</span><span style=3D"white-space: pre-wrap;">f.write=
(css_content.replace(css_content[css_content.find('body {'):css_content.fin=
d('}'[0])], 'body {' + css_replacement_content ))</span><span style=3D"whit=
e-space: pre-wrap;">add_banner_old_docs('.')</span><span style=3D"white-spa=
ce: pre-wrap;">Not tested of course, but hopefully that helps you understan=
d what I meant with factoring out the code into one function only.</span></=
blockquote>
Thank you very much, I implemented this and&nbsp; I worked.<span style=3D"w=
hite-space: pre-wrap;"><br /></span>

--gyV9FJMYF7K9sCzy13zl--

